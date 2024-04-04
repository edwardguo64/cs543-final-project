#include "lenet_cnn.h"
#include <string.h>

float relu(float input) {
	return (input > 0) ? input : 0;
}

void convolution1(float input[1][32][32], float weights[6][1][5][5], float bias[6], float output[6][28][28]) {
    for (int co = 0; co < 6; co++) {
        for (int h = 0; h < 28; h++) {
            for (int w = 0; w < 28; w++) {
#pragma HLS PIPELINE
                for (int i = 0; i < 5; i++) {
                    for (int j = 0; j < 5; j++) {
                    	float sum = i == 0 && j == 0 ? bias[co] : sum;

                    	if (i + h < 32 && j + w < 32) {
                    		sum += weights[co][0][i][j] * input[0][i + h][j + w];
                    	}

                    	if (i == 4 && j == 4) {
                    		output[co][h][w] = relu(sum);
                    	}
                    }
                }
            }
        }
    }
}

void max_pooling2(float input[6][28][28],float output[6][14][14]) {
    for(int c = 0; c < 6; c++) {
        for(int h = 0; h < 14; h++) {
            for(int w = 0; w < 14; w++) {
                for(int i = 0; i < 2; i++) {
                    for(int j = 0;j < 2; j++) {
#pragma HLS PIPELINE
                    	float max_value = i == 0 && j == 0 ? -1000000000000.0 : max_value;

                    	if (i + h * 2 < 28 && j + w * 2 < 28) {
                    		max_value = (max_value > input[c][i + h * 2][j + w * 2]) ? max_value : input[c][i + h * 2][j + w * 2];
                    	}

                    	if (i == 1 && j == 1) {
                    		output[c][h][w] = relu(max_value);
                    	}
                    }
                }
            }
        }
    }
}

void convolution3(float input[6][14][14], float weights[16][6][5][5], float bias[16], float output[16][10][10]) {
	for(int co = 0; co < 16; co++) {
		for(int h = 0; h < 10; h++) {
			for(int w = 0; w < 10; w++) {
#pragma HLS PIPELINE
				for(int i = 0; i < 5; i++) {
					for(int j = 0; j < 5; j++) {
						for (int ci = 0; ci < 6; ci++) {
							float sum = i == 0 && j == 0 && ci == 0 ? bias[co] : sum;

							if ((h + i) < 14 && (w + j) < 14) {
								sum += weights[co][ci][i][j] * input[ci][h + i][w + j];
							}

							if (i == 4 && j == 4 && ci == 5) {
								output[co][h][w] = relu(sum);
							}
						}
					}
				}
            }
        }
    }
}

void max_pooling4(float input[16][10][10], float output[16][5][5]) {
    for(int c = 0; c < 16; c++) {
        for(int h = 0; h < 5; h++) {
            for(int w = 0; w < 5; w++) {
                for(int i = 0; i < 2; i++) {
					for(int j = 0; j < 2; j++) {
#pragma HLS PIPELINE
						float max_value = i == 0 && j == 0 ? -1000000000000.0 : max_value;

						if (i + h * 2 < 28 && j + w * 2 < 28) {
							max_value = (max_value > input[c][i + h * 2][j + w * 2]) ? max_value : input[c][i + h * 2][j + w * 2];
						}

						if (i == 1 && j == 1) {
							output[c][h][w] = relu(max_value);
						}
					}
				}
            }
        }
    }
}

void convolution5(float input[16][5][5], float weights[120][16][5][5], float bias[120], float output[120][1][1]) {
	for(int co = 0; co < 120; co++) {
		for(int i = 0, m = 0; i < 5; i++, m++) {
#pragma HLS PIPELINE
			for(int j = 0, n = 0; j < 5; j++, n++) {
				for (int ci = 0; ci < 16; ci++) {
					float sum = i == 0 && j == 0 && ci == 0 ? bias[co] : sum;

					sum += weights[co][ci][m][n] * input[ci][i][j];

					if (i == 4 && j == 4 && ci == 15) {
						output[co][0][0] = relu(sum);
					}
                }
            }
        }
    }
}

void fc6(const float input[120][1][1], const float weights[10][120][1][1], const float bias[10], float output[10]) {
	for(int c = 0; c < 120; c++) {
		for(int n = 0; n < 10; n++) {
#pragma HLS PIPELINE
			float acc = c == 0 ? bias[n] : output[n];
			output[n] = acc + weights[n][c][0][0] * input[c][0][0];
		}
	}
}

void lenet_cnn(float image[1][32][32], float parameters[51902], float fc6_output[10]) {
#pragma HLS INTERFACE m_axi depth=1024 port=image offset=slave bundle=DATA_IMAGE
#pragma HLS INTERFACE m_axi depth=51902 port=parameters offset=slave bundle=DATA_PARAMETERS
#pragma HLS INTERFACE m_axi depth=10 port=fc6_output offset=slave bundle=DATA_FC6_OUTPUT
#pragma HLS INTERFACE s_axilite register port=return bundle=CTL

	float conv1_weights[6][1][5][5];
	float conv1_bias[6];
	float conv3_weights[16][6][5][5];
	float conv3_bias[16];
	float conv5_weights[120][16][5][5];
	float conv5_bias[120];
	float fc6_weights[10][120][1][1];
	float fc6_bias[10];

	float fc6_output_buf[10];

	float conv1_output[6][28][28];
	float pool2_output[6][14][14];
	float conv3_output[16][10][10];
	float pool4_output[16][5][5];
	float conv5_output[120][1][1];

	memcpy(***conv1_weights, parameters, 150 * sizeof(float));
	memcpy(conv1_bias, parameters + 150, 6 * sizeof(float));

	memcpy(***conv3_weights, parameters + 150 + 6, 2400 * sizeof(float));
	memcpy(conv3_bias, parameters + 150 + 6 + 2400, 16 * sizeof(float));

	memcpy(***conv5_weights, parameters + 150 + 6 + 2400 + 16, 48000 * sizeof(float));
	memcpy(conv5_bias, parameters + 150 + 6 + 2400 + 16 + 48000, 120 * sizeof(float));

	memcpy(***fc6_weights, parameters + 150 + 6 + 2400 + 16 + 48000 + 120, 1200 * sizeof(float));
	memcpy(fc6_bias, parameters + 150 + 6 + 2400 + 16 + 48000 + 120 + 1200, 10 * sizeof(float));

	convolution1(image, conv1_weights, conv1_bias, conv1_output);

	max_pooling2(conv1_output, pool2_output);

	convolution3(pool2_output, conv3_weights, conv3_bias, conv3_output);

	max_pooling4(conv3_output, pool4_output);

	convolution5(pool4_output, conv5_weights, conv5_bias, conv5_output);

	fc6(conv5_output, fc6_weights, fc6_bias, fc6_output_buf);

	memcpy(fc6_output, fc6_output_buf, 10 * sizeof(float));
}
