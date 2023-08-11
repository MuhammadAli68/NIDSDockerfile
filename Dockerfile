# Use a base image with a specific version of Linux (e.g., Ubuntu)
FROM ubuntu:20.04

# Set environment variables for non-interactive mode during installation
ENV DEBIAN_FRONTEND=noninteractive

# Install required packages and utilities
RUN apt-get update && \
    apt-get install -y curl wget && \
    apt-get clean

# Install specific version of Node.js (18.13.0)
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && \
    apt-get install -y nodejs && \
    node -v && npm -v

# Update package lists
RUN apt-get update && \
    apt-get install -y software-properties-common

# Add the deadsnakes PPA repository
RUN add-apt-repository ppa:deadsnakes/ppa

# Update again after adding the repository
RUN apt-get update

# Install Python 3.9 and related tools
RUN apt-get install -y python3.9 python3.9-distutils && \
    apt-get clean

# Create a symbolic link to use 'python3' for Python 3.9
# RUN ln -s /usr/bin/python3.9 /usr/bin/python3

# Install pip for Python 3.9
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && \
    python3.9 get-pip.py && \
    rm get-pip.py

# Create a symbolic link to use 'python3' for Python 3.9
#RUN ln -s /usr/bin/python3.9 /usr/bin/python3

# Check the Python version
RUN python3 --version

# Install required packages and utilities
RUN apt-get update && \
    apt-get install -y curl wget git && \
    apt-get clean

# Cleanup
RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /app

# Clone your GitHub repository into the image
RUN git clone https://github.com/MuhammadAli68/NIDS.git

# Open repository
WORKDIR /app/NIDS

# Copy package.json and package-lock.json (or yarn.lock) into the image
# COPY package.json package-lock.json /app/

# Install the dependencies mentioned in package.json
# RUN npm install
# OR, if you are using Yarn
# RUN yarn install

# Install python packages
RUN pip install --no-cache-dir --upgrade pip \
  && pip install --no-cache-dir -r requirements.txt

# Add this line before the CMD instruction
RUN echo 'export PATH=/usr/bin/python3.9:$PATH' >> ~/.bashrc

# Command to run your application
CMD ["node", "NIDS.js"]
