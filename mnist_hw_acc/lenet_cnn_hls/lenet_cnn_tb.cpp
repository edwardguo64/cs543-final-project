#include "lenet_cnn.h"
#include <iostream>
#include <fstream>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define NUM_TESTS 10000

using namespace std;

inline float relu_1(float input)
{
    return (input > 0)? input:0;
}

// Convolution Layer 1
void convolution1_1(float input[1][32][32], float weights[6][1][5][5], float bias[6], float output[6][28][28])
{
    for(int co = 0; co < 6; co++)
        for(int h = 0; h < 28; h++)
            for(int w = 0; w < 28; w++)
            {
                float sum = 0;
                for(int i = h, m = 0; i < (h + 5); i++, m++)
                {
                    for(int j = w, n = 0; j < (w + 5); j++, n++)
                        sum += weights[co][0][m][n] * input[0][i][j];
                }
                output[co][h][w] = sum + bias[co];
            }
}

// Relu Layer 1
void relu1_1(float input[6][28][28], float output[6][28][28])
{
    for(int i = 0; i < 6; i++)
        for(int j = 0; j < 28; j++)
            for(int k = 0; k < 28; k++)
                output[i][j][k] = relu_1(input[i][j][k]);
}

// Pooling Layer 2
void max_pooling2_1(float input[6][28][28],float output[6][14][14])
{
    for(int c = 0;c < 6; c++)
        for(int h = 0; h < 14; h++)
            for(int w = 0; w < 14; w++)
            {
                float max_value=-1000000000000.0;
                for(int i = h*2; i < h*2+2; i++)
                {
                    for(int j = w*2;j < w*2+2; j++)
                        max_value = (max_value > input[c][i][j]) ? max_value:input[c][i][j];
                }
                output[c][h][w] = max_value;

            }
}

// Relu Layer 2
void relu2_1(float input[6][14][14], float output[6][14][14])
{
    for(int i = 0; i < 6; i++)
        for(int j = 0; j < 14; j++)
            for(int k = 0; k < 14; k++)
                output[i][j][k] = relu_1(input[i][j][k]);
}

// Convolution Layer 3
void convolution3_1(float input[6][14][14], float weights[16][6][5][5], float bias[16], float output[16][10][10])
{
    for(int co = 0; co < 16; co++)
        for(int h = 0; h < 10; h++)
            for(int w = 0; w < 10; w++)
            {
                    float sum = 0;
                    for(int i = h, m = 0; i < (h+5); i++, m++)
                    {
                        for(int j = w, n = 0; j < (w+5); j++, n++)
                            for (int ci = 0; ci < 6; ci++)
                                sum += weights[co][ci][m][n] * input[ci][i][j];
                    }
                    output[co][h][w] = sum + bias[co];
            }
}

// Relu Layer 3
void relu3_1(float input[16][10][10], float output[16][10][10])
{
    for(int i = 0; i < 16; i++)
        for(int j = 0; j < 10; j++)
            for(int k = 0; k < 10; k++)
                output[i][j][k] = relu_1(input[i][j][k]);
}

// Pooling Layer 4
void max_pooling4_1(float input[16][10][10],float output[16][5][5])
{
    for(int c = 0;c < 16; c++)
        for(int h = 0; h < 5; h++)
            for(int w = 0; w < 5; w++)
            {
                float max_value=-1000000000000.0;
                for(int i = h*2; i < h*2+2; i++)
                {
                    for(int j = w*2;j < w*2+2; j++)
                        max_value = (max_value > input[c][i][j]) ? max_value:input[c][i][j];
                }
                output[c][h][w] = max_value;
            }
}

// Relu Layer 4
void relu4_1(float input[16][5][5], float output[16][5][5])
{
    for(int i = 0; i < 16; i++)
        for(int j = 0; j < 5; j++)
            for(int k = 0; k < 5; k++)
                output[i][j][k] = relu_1(input[i][j][k]);
}

// Convolution Layer 5
void convolution5_1(float input[16][5][5], float weights[120][16][5][5], float bias[120], float output[120][1][1])
{
    for(int co = 0; co < 120; co++)
    {
        float sum = 0;
        for(int i = 0, m = 0; i < 5; i++, m++)
        {
            for(int j = 0, n = 0; j < 5; j++, n++)
            {
                for (int ci = 0; ci < 16; ci++)
                    sum += weights[co][ci][m][n] * input[ci][i][j];
            }
        }
        output[co][0][0] = sum + bias[co];
    }
}

// Relu Layer 5
void relu5_1(float input[120][1][1], float output[120][1][1])
{
    for(int i = 0; i < 120; i++)
        output[i][0][0] = relu_1(input[i][0][0]);
}

// Fully connected Layer 6
void fc6_1(const float input[120][1][1], const float weights[10][120][1][1], const float bias[10], float output[10])
{
    for(int n = 0; n < 10; n++)
    {
        output[n] = 0;
        for(int c = 0; c < 120; c++)
        {
            output[n] += weights[n][c][0][0] * input[c][0][0];
        }
        output[n]+=bias[n];
    }
}

// Relu Layer 6
void relu6_1(float input[10], float output[10])
{
    for(int i = 0; i < 10; i++)
        output[i] = relu_1(input[i]);
}

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

int main() {
	unsigned int header_img[4];
	unsigned int header_lbl[2];
	unsigned char images[NUM_TESTS * 28 * 28];
	float image[1][32][32];
	float parameters[51902];
	float fc6_output[10];
	float fc6_output_1[10];
	unsigned char labels[NUM_TESTS];

	float conv1_weights[6][1][5][5];
	float conv1_bias[6];
	float conv3_weights[16][6][5][5];
	float conv3_bias[16];
	float conv5_weights[120][16][5][5];
	float conv5_bias[120];
	float fc6_weights[10][120][1][1];
	float fc6_bias[10];

	float conv1_output[6][28][28];
	float pool2_output[6][14][14];
	float conv3_output[16][10][10];
	float pool4_output[16][5][5];
	float conv5_output[120][1][1];

	cout << "reading parameters" << endl;

	FILE *param_file = fopen("sd_card_files/params.bin", "r");
	if (param_file == NULL) {
		cout << param_file << " fail" << endl;
		return 0;
	}
	fseek(param_file, 0, SEEK_SET);
	fread((void*)parameters, sizeof(float), 51902, param_file);
	fclose(param_file);

	cout << "done parsing parameters" << endl;

	param_file = fopen("sd_card_files/images.bin", "r");
	fseek(param_file, 0, SEEK_SET);
	fread((void*)header_img, sizeof(unsigned int), 4, param_file);
	fread((void*)images, sizeof(unsigned char), NUM_TESTS * 28 * 28, param_file);
	fclose(param_file);

	cout << "done parsing images" << endl;

	param_file = fopen("sd_card_files/labels.bin", "r");
	fseek(param_file, 0, SEEK_SET);
	fread((void*)header_lbl, sizeof(unsigned int), 2, param_file);
	fread((void*)labels, sizeof(unsigned char), NUM_TESTS, param_file);
	fclose(param_file);

	cout << "done parsing labels" << endl;

	memcpy(***conv1_weights, parameters, 150 * sizeof(float));
	memcpy(conv1_bias, parameters + 150, 6 * sizeof(float));

	memcpy(***conv3_weights, parameters + 150 + 6, 2400 * sizeof(float));
	memcpy(conv3_bias, parameters + 150 + 6 + 2400, 16 * sizeof(float));

	memcpy(***conv5_weights, parameters + 150 + 6 + 2400 + 16, 48000 * sizeof(float));
	memcpy(conv5_bias, parameters + 150 + 6 + 2400 + 16 + 48000, 120 * sizeof(float));

	memcpy(***fc6_weights, parameters + 150 + 6 + 2400 + 16 + 48000 + 120, 1200 * sizeof(float));
	memcpy(fc6_bias, parameters + 150 + 6 + 2400 + 16 + 48000 + 120 + 1200, 10 * sizeof(float));

	cout << "done copying parameters" << endl;

	get_image(images, 0, image);

//	lenet_cnn(image, parameters, fc6_output);

	convolution1_1(image, conv1_weights, conv1_bias, conv1_output);
	relu1_1(conv1_output, conv1_output);

	max_pooling2_1(conv1_output, pool2_output);
	relu2_1(pool2_output, pool2_output);

	convolution3_1(pool2_output, conv3_weights, conv3_bias, conv3_output);
	relu3_1(conv3_output, conv3_output);

	max_pooling4_1(conv3_output, pool4_output);
	relu4_1(pool4_output, pool4_output);

	convolution5_1(pool4_output, conv5_weights, conv5_bias, conv5_output);
	relu5_1(conv5_output, conv5_output);

	fc6_1(conv5_output, fc6_weights, fc6_bias, fc6_output_1);

	unsigned char result = 0;
	float p = -1000000.0;
	for(int i = 0; i < 10; i++)
	{
		cout << "accelerator: " << fc6_output[i] << ", cpu: " << fc6_output_1[i] << endl;

		if(fc6_output[i] > p)
		{
			p = fc6_output[i];
			result = i;
		}
	}

	return 0;
}
