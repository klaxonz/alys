# 选择一个官方的 Python 基础镜像
FROM python:3.8-slim

# 设置环境变量，例如时区、工作目录等
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
WORKDIR /app

# 安装编译工具链和 Python 开发头文件
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    python3.8-dev \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# 复制项目文件到容器中
COPY . /app

# 使用Pip安装依赖项，requirements.txt应该在项目根目录下
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8587

RUN ls /app

# 指定容器启动时执行的命令，例如运行Python脚本
CMD ["python", "/app/app.py"]