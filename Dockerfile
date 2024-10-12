FROM anchorxia/musev:1.0.0

#MAINTAINER 维护者信息
LABEL MAINTAINER="pudgeli"
LABEL Email="pudgeli@qq.com"
LABEL Description="musev gpu runtime image, base docker is pytorch/pytorch:2.0.1-cuda11.7-cudnn8-devel"
ARG DEBIAN_FRONTEND=noninteractive

WORKDIR /workspace/MuseV

RUN apt-get update \
    # if you located in China, you can use aliyun mirror to speed up
    # && echo "deb http://mirrors.aliyun.com/debian testing main" > /etc/apt/sources.list \
    # && echo "deb http://deb.debian.org/debian testing main" > /etc/apt/sources.list \
    && apt-get update \
    # For Security
    && apt-get install -y --no-install-recommends vim curl iputils-ping

COPY . /workspace/MuseV/

RUN chmod +x /workspace/MuseV/entrypoint.sh

# RUN . /opt/conda/etc/profile.d/conda.sh  \
#     && echo "source activate musev" >> ~/.bashrc \
#     && conda activate musev \
#     && conda env list \
#     && pip --no-cache-dir install cuid gradio==4.12 spaces

ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]