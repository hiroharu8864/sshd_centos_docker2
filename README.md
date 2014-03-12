sshd_centos_docker2
===================
Docker環境のCentOSでSSHだけを行う。 
account: testuser, password: testuser. 
でログインを行う。

```
　# docker build -t htanaka/sshd
　# docker run -d htanaka/sshd
　# docker inspect containerID | grep "IPAddress"
　# ssh testuser@IPAddress
```

License and Authors
-------------------
Authors: Hiroharu Tanaka
