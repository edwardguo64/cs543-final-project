float relu(float input);

void convolution1(float input[1][32][32], float weights[6][1][5][5], float bias[6], float output[6][28][28]);

void relu1(float input[6][28][28], float output[6][28][28]);

void max_pooling2(float input[6][28][28],float output[6][14][14]);

void relu2(float input[6][14][14], float output[6][14][14]);

void convolution3(float input[6][14][14], float weights[16][6][5][5], float bias[16], float output[16][10][10]);

void relu3(float input[16][10][10], float output[16][10][10]);

void max_pooling4(float input[16][10][10], float output[16][5][5]);

void relu4(float input[16][5][5], float output[16][5][5]);

void convolution5(float input[16][5][5], float weights[120][16][5][5], float bias[120], float output[120][1][1]);

void relu5(float input[120][1][1], float output[120][1][1]);

void fc6(const float input[120][1][1], const float weights[10][120][1][1], const float bias[10], float output[10]);

void read_c1w(float parameters[51902], float conv1_weights[6][1][5][5]);

void read_c1b(float parameters[51902], float conv1_bias[6]);

void read_c3w(float parameters[51902], float conv3_weights[16][6][5][5]);

void read_c3b(float parameters[51902], float conv3_bias[16]);

void read_c5w(float parameters[51902], float conv5_weights[120][16][5][5]);

void read_c5b(float parameters[51902], float conv5_bias[120]);

void read_fc6w(float parameters[51902], float fc6_weights[10][120][1][1]);

void read_fc6b(float parameters[51902], float fc6_bias[10]);

void lenet_cnn(float image[1][32][32], float parameters[51902], float fc6_output[10]);
