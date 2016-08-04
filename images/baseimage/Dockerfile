# thisjohn/ubuntu Dockerfile

# Pull base image
FROM ubuntu:14.04

# Install
RUN \
  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y build-essential && \
  apt-get install -y software-properties-common

RUN \
  apt-get install -y python python-dev python-pip python-virtualenv

RUN \
  apt-get install -y curl git htop man unzip vim wget gettext

# Add files
ADD root/bashrc /root/.bashrc
ADD root/vimrc /root/.vimrc

# Set environment variables
ENV HOME /root

# Define working directory
WORKDIR /root

# Define default command
CMD ["bash"]
