sshd_centos_docker2
===================

ssh to CentOS of Dockerfile

```
　# docker build -t htanaka/sshd
　# docker run -d htanaka/sshd
　# docker inspect containerID | grep "IPAddress"
　# ssh testuser@IPAddress
```

License and Authors
-------------------
Authors: Hiroharu Tanaka
