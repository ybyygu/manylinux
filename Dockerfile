# [[file:manylinux.note::6c7ad4db][6c7ad4db]]
FROM quay.io/pypa/manylinux2010_x86_64

MAINTAINER Wenping Guo (ybyygu@gmail.com)

# required for CentOS 6
COPY fix-yum.sh /root/
RUN bash -x /root/fix-yum.sh

# install essential commands
RUN yum update -y
RUN yum install -y openssh-clients wget vim
RUN yum clean all

# install tmux for interactive compiling
COPY ./tmux-3.1b /usr/bin/tmux
# shipped coretuils are too old. use realpath statically compiled using rust
COPY ./realpath /usr/bin/realpath

# the default is the shipped python2
RUN echo "export PATH=/opt/python/cp39-cp39/bin/:${PATH}" >> /etc/profile.d/python.sh
# vim is perfect
RUN echo "vi='vim'" >> ~/.bashrc

# force to start in login shell for interactive jobs
CMD ["bash", "--login"]
# 6c7ad4db ends here
