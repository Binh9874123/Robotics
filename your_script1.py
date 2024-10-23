import torch
from rt2.model import RT2

# Dữ liệu mẫu
img = torch.randn(1, 3, 256, 256)
caption = torch.randint(0, 20000, (1, 1024))

# Khởi tạo mô hình
model = RT2()

# Chạy mô hình
output = model(img, caption)
print(output)