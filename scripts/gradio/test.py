import torch

# 检查CUDA是否可用
print("CUDA available:", torch.cuda.is_available())

# 获取GPU设备名称
if torch.cuda.is_available():
    device_name = torch.cuda.get_device_name(0)
    print("Using GPU:", device_name)

# 创建一个大张量并将其移动到GPU
tensor = torch.randn(10000, 10000).cuda()
print("Tensor created on GPU")

# 检查当前和最大分配的内存
print("Current allocated memory:", torch.cuda.memory_allocated())
print("Max allocated memory:", torch.cuda.max_memory_allocated())