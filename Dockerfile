# Use an official Ubuntu base image
FROM ubuntu:20.04

# Set environment variables to non-interactive
ENV DEBIAN_FRONTEND=noninteractive

# Update the package list and install basic utilities
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    build-essential \
    curl \
    vim \
    git \
    wget \
    ca-certificates && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /root

# Define the default command to run when starting the container
CMD ["bash"]
