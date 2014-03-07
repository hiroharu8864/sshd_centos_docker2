FROM centos
MAINTAINER Hiroharu Tanaka <hiroharu8864@gol.com>

RUN yum install -y passwd
RUN yum install -y openssh
RUN yum install -y openssh-server
RUN yum install -y openssh-clients
RUN yum install -y sudo

RUN sed -ri "s/^UsePAM yes/#UsePAM yes/" /etc/ssh/sshd_config
RUN sed -ri "s/^#UsePAM no/UsePAM no/" /etc/ssh/sshd_config
RUN /etc/init.d/sshd start
RUN /etc/init.d/sshd stop

## create user
RUN useradd -D --shell=/bin/bash
RUN useradd -m testuser
RUN echo "testuser:testuser." | chpasswd
RUN echo "testuser ALL=(ALL) ALL" >> /etc/sudoers.d/testuser

EXPOSE 22
CMD /usr/sbin/sshd -D
