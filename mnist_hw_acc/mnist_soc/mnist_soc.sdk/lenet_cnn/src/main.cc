#include <iostream>
#include <cmath>
#include <algorithm>
#include <fstream>
#include <vector>
#include <array>

#include "xparameters.h"	/* SDK generated parameters */
#include "xsdps.h"			/* SD device driver */
#include "xil_printf.h"
#include "ff.h"				/* FAT File System */
#include "xil_cache.h"
#include "xplatform_info.h"
#include "xlenet_cnn.h"
#include "xtmrctr.h"
#include "xil_cache_l.h"

#define TMRCTR_DEVICE_ID    XPAR_AXI_TIMER_0_DEVICE_ID

// number of test cases in LeNet is 10K
#define NUM_TESTS 10000

// SD card and file reading objects
static FIL fil;		/* File object */
static FATFS fatfs;
static char *SD_File;
u32 Platform;

using namespace std;

// Static allocation of test images
unsigned char images[NUM_TESTS*28*28];
unsigned char labels[NUM_TESTS];

// Static allocation of image an output arrays
float image[1][32][32] = {0};
float fc6_output[10] = {0};

// Static allocation of parameters
float parameters[51902] = {0};

// Parse MNIST test images
int parse_mnist_images(const char* filename, unsigned char *images)
{
	FRESULT Res;
	UINT NumBytesRead;
    SD_File = (char *)filename;
    unsigned int header[4];

	Res = f_open(&fil, SD_File, FA_READ);
	if (Res)
	{
		xil_printf("ERROR when opening mnist images data file!\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Opened mnist images data file\n\r");
	}

	Res = f_lseek(&fil, 0);
	if (Res)
	{
		xil_printf("Cant seek to start\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Seeked to start\n\r");
	}

	Res = f_read(&fil, (void*)header, sizeof(unsigned int)*4, &NumBytesRead);
	if (Res)
	{
		xil_printf("Cant read header from file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Read header from file\n\r");
	}

	Res = f_read(&fil, (void*)images, sizeof(unsigned char)*NUM_TESTS*28*28, &NumBytesRead);
	if (Res)
	{
		xil_printf("Cant read images from file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Read images from file\n\r");
	}

	Res = f_close(&fil);
	if (Res)
	{
		xil_printf("Failed to close images file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Closed images file\n\r");
	}

	xil_printf("Returning...\n\r");


	return XST_SUCCESS;
}

// Parse MNIST test image labels
int parse_mnist_labels(const char* filename, unsigned char *labels)
{
	FRESULT Res;
	UINT NumBytesRead;
    SD_File = (char *)filename;
    unsigned int header[2];

	Res = f_open(&fil, SD_File, FA_READ);
	if (Res)
	{
		xil_printf("ERROR when opening mnist label data file!\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Opened mnist labels data file\n\r");
	}

	Res = f_lseek(&fil, 0);
	if (Res)
	{
		xil_printf("Cant seek to start\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Seeked to start\n\r");
	}

	Res = f_read(&fil, (void*)header, sizeof(unsigned int)*2, &NumBytesRead);
	if (Res)
	{
		xil_printf("Cant read header from file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Read header from file\n\r");
	}

	Res = f_read(&fil, (void*)labels, sizeof(unsigned char)*NUM_TESTS, &NumBytesRead);
	if (Res)
	{
		xil_printf("Cant read labels from file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Read labels from file\n\r");
	}

	Res = f_close(&fil);
	if (Res)
	{
		xil_printf("Failed to close labels file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Closed labels file\n\r");
	}

	return 0;
}

// Parse parameter file and load it in to the arrays
int parse_parameters(const char* filename, float* parameters)
{
	FRESULT Res;
	UINT NumBytesRead;
    SD_File = (char *)filename;

	Res = f_open(&fil, SD_File, FA_READ);
	if (Res)
	{
		xil_printf("ERROR when opening parameter file!\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Opened parameter file\n\r");
	}

	Res = f_lseek(&fil, 0);
	if (Res)
	{
		xil_printf("Cant seek to start\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Seeked to start\n\r");
	}

	Res = f_read(&fil, (void*)parameters, sizeof(float)*51902, &NumBytesRead);
	if (Res)
	{
		xil_printf("Cant read parameters from file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Read parameters from file\n\r");
	}

	return 0;

}

// Fetch a single image to be processed.
// Pad images with -1 on edges
void get_image(unsigned char *images, unsigned int idx, float image[1][32][32])
{
    for(int i = 0; i < 32; i++)
        for(int j = 0; j < 32; j++)
        {
            if (i < 2 || i > 29 || j < 2 || j > 29)
                image[0][i][j] = -1.0;
            else
                image[0][i][j] = images[idx*28*28 + (i-2)*28 + j-2] / 255.0 * 2.0 - 1.0;
        }
}

int verify_model() {
	int status;

	//Timer variables to measure time
	u32 timerCount_Stop;
	u32 timerCount_Start;

	//AXI device object for AXI Timer
	XTmrCtr timer;

	// lenet cnn objects from xlenet_cnn.h
	XLenet_cnn accelerator;
	XLenet_cnn_Config *accelerator_config;

	// Get config data struct for lenet cnn
	accelerator_config = XLenet_cnn_LookupConfig(XPAR_XLENET_CNN_0_DEVICE_ID);
	if(!accelerator_config)
	{
		xil_printf("No acc config found!\n\r");
		return 1;
	}
	else
	{
		xil_printf("Got acc config\n\r");
	}

	// Using config object to initialize the accelerator object
	status = XLenet_cnn_CfgInitialize(&accelerator, accelerator_config);
	if(status != XST_SUCCESS)
	{
		xil_printf("Initialization of acc failed\n\r");
	}
	else
	{
		xil_printf("Initialization of acc successful\n\r");
	}

	// Initialize timer object
	status = XTmrCtr_Initialize(&timer, TMRCTR_DEVICE_ID);
	if (status != XST_SUCCESS)
	{
		xil_printf("Timer init fail\n\r");
		return XST_FAILURE;
	}

	status = XTmrCtr_SelfTest(&timer, 0);
	if (status != XST_SUCCESS)
	{
		xil_printf("Timer self test fail\n\r");
		return XST_FAILURE;
	}

	cout<<"Starting LeNet\n\r";

	cout<<"Mounting SD\n\r";
	FRESULT Res;
	TCHAR *Path = (TCHAR*)"0:/";
	Res = f_mount(&fatfs, Path, 0);
	if (Res != FR_OK)
	{
		xil_printf("Failed to open filesystem\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Mounted card\n\r");
	}

	cout<<"Parsing MNIST images\n\r";
	parse_mnist_images("images.bin", images);

	cout<<"Parsing MNIST labels\n\r";
	parse_mnist_labels("labels.bin", labels);

	cout<<"Parsing parameters\n\r";
	parse_parameters("params.bin", parameters);

	// Sets the base pointers of the data to each of the ports of the accelerator
	XLenet_cnn_Set_image_r(&accelerator, (u32)**image);
	XLenet_cnn_Set_parameters(&accelerator, (u32)parameters);
	XLenet_cnn_Set_fc6_output(&accelerator, (u32)fc6_output);

	//Reset the timer
	XTmrCtr_Reset(&timer, 0);
	XTmrCtr_ClearStats(&timer);
	XTmrCtr_Start(&timer, 0);
	u32 total_time_acc = 0;
	int overflow_acc = 0;

	cout<<"Starting inference\n\r";
	int num_correct = 0;

	xil_printf("\n\rTest Image: ");
	for (int k = 0; k < NUM_TESTS; k++)
	{
		// Get test image from dataset
		get_image(images, k, image);

		// Flush caches
		// Make sure that all writes have propogated to DRAM,
		// since accelerator is not cache coherent
		Xil_L1DCacheFlush();
		Xil_L2CacheFlush();

		//Start the timer
		timerCount_Start = XTmrCtr_GetValue(&timer, 0);

		// Start the accelerator
		XLenet_cnn_Start(&accelerator);
		// Wait until the accelerator is done
		while(!XLenet_cnn_IsDone(&accelerator)){}

		//Stop the timer since the accelerator is done
		timerCount_Stop = XTmrCtr_GetValue(&timer, 0);
		if ((u64)total_time_acc + (u64)(timerCount_Stop - timerCount_Start) > (u64)4294967295) {
			overflow_acc++;
		}
		total_time_acc += (timerCount_Stop - timerCount_Start);

		// Check which output was largest.
		// Largest output is result
		unsigned char result = 0;
		float p = -1000000.0;
		for(int i = 0; i < 10; i++)
		{
			if(fc6_output[i] > p)
			{
				p = fc6_output[i];
				result = i;
			}
		}

		if(result == labels[k])
		{
			num_correct++;
		}

		//Disable these print statements when doing profiling and benchmark times
		xil_printf("%d ", k);
		if(k%10==0)
			xil_printf("\n\rTest Image: ");
	}

	xil_printf("Accelerator Done\n\r");

	//Display time
	cout << "Time Accelerator: " << total_time_acc << ", overflow: " << overflow_acc << endl;

	std::cout << "\n\rAccuracy = " << float(num_correct)/NUM_TESTS * 100.0 << "%" << std::endl;

	return 0;
}

int main(int argc, char **argv)
{
	int verified;

	verified = verify_model();

	if (!verified) {
		cout << "model properly works" << endl;
	} else {
		cout << "model failed to work" << endl;
	}

    return 0;
}
