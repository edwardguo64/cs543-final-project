import torch
import struct

weights = torch.load('weights.pt')

print("Model's state_dict:")
for param_tensor in weights:
    print(param_tensor, "\t", weights[param_tensor].size())

file = open('parameters.bin', "wb")

layer1_w = weights['layer1.0.weight'].cpu().numpy().flatten()
layer1_b = weights['layer1.0.bias'].cpu().numpy().flatten()

layer2_w = weights['layer2.0.weight'].cpu().numpy().flatten()
layer2_b = weights['layer2.0.bias'].cpu().numpy().flatten()

layer3_w = weights['layer3.0.weight'].cpu().numpy().flatten()
layer3_b = weights['layer3.0.bias'].cpu().numpy().flatten()

fc_w = weights['fc.weight'].cpu().numpy().flatten()
fc_b = weights['fc.bias'].cpu().numpy().flatten()

# print(weights['layer1.0.weight'].cpu().numpy().shape)
# print(weights['layer2.0.weight'].cpu().numpy().shape)
# print(weights['layer3.0.weight'].cpu().numpy().shape)
# print(weights['fc.weight'].cpu().numpy().shape)
# print(layer2_w)

parameters = [layer1_w, layer1_b, layer2_w, layer2_b, layer3_w, layer3_b, fc_w, fc_b]

for parameter in parameters:
    for value in parameter:
        ba = bytearray(struct.pack("f", value))

        # print([ "0x%02x" % b for b in ba ])

        # print(struct.unpack("f", ba))

        file.write(bytes(ba))