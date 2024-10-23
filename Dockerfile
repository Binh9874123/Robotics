
# Sử dụng image base của Python
FROM python:3.10

# Cập nhật pip
RUN pip install --upgrade pip

# Thiết lập thư mục làm việc
WORKDIR /app

# Sao chép requirements.txt và cài đặt các thư viện cần thiết
COPY requirements.txt .
RUN pip install -r requirements.txt

# Sao chép toàn bộ mã nguồn vào image
COPY . .

# Copy the script into the container
COPY your_script1.py .

# Lệnh chạy khi khởi động container
CMD ["python3", "your_script1.py"]
