# 还没写完，就是临时debug的版本

# 使用基础镜像，这里选择 Python 3.10 的官方镜像
FROM python:3.10.16-slim

# 设置工作目录
WORKDIR /app

# 安装系统依赖，包括 Git
RUN apt-get update && apt-get install -y \
    git 

RUN pip install pynini==2.1.5
RUN git clone https://github.com/cosyvoice/cosyvoice.git .
RUN pip install -r requirements.txt -i https://mirrors.aliyun.com/pypi/simple/ --trusted-host=mirrors.aliyun.com
