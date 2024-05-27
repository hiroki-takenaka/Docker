# Build image for pointnet2

From tensorflow/tensorflow:1.4.0-gpu
ARG DEBIAN_FRONTED=noninteractive

RUN apt-get update && apt-get install -y \
    python-dev \
    python-pip \
    libhdf5-dev \
    python-h5py \
    g++ \
    build-essential \
    cmake \
    wget \
    python-tk \
 && rm -rf /var/lib/apt/lists/*

RUN pip install h5py
