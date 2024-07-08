# Instructions and useful links....

Segue link da VM do centos 
[ https://drive.google.com/file/d/1ypKKc0RR6wao2x4zupcVjDISAXkspzNP/view?ts=64f3bf7a ]

Segue comandos para instalação dos seguintes softwares:
  - Python3.9.16
  - Pip3
  - Docker
  - Docker compose

```
sudo su -
```

```
PythonVersion='3.9.16'
PythonShortVersion='3.9'
rm -f /var/run/yum.pid
```
```
yum update
```
```
yum install dnf alacarte openssl-devel bzip2-devel libffi-devel yum-utils -y
```
```
yum groupinstall "Development tools" -y
```
<br><br>

## Install python3 & pip3
```
cd /usr/src
wget https://www.python.org/ftp/python/${PythonVersion}/Python-${PythonVersion}.tgz
```
```
tar xzf Python-${PythonVersion}.tgz
```
```
cd Python-${PythonVersion}
```
```
./configure --with-ensurepip=install --enable-optimizations
```
```
make altinstall
```
### Criação dos links do python
```
ln -sf /usr/src/Python-${PythonVersion}/python /bin/python${PythonShortVersion}
ln -sf /bin/python${PythonShortVersion} /bin/python3
ln -sf /usr/local/bin/pip${PythonShortVersion} /bin/pip3
```
```
cd /
```
<br><br>

## Install VsCode

```
rpm --import https://packages.microsoft.com/keys/microsoft.asc
tee /etc/yum.repos.d/vscode.repo <<EOF
[code]
name=Visual Studio Code
baseurl=https://packages.microsoft.com/yumrepos/vscode
enabled=1
gpgcheck=1
gpgkey=https://packages.microsoft.com/keys/microsoft.asc
EOF
```
```
dnf install code
```
<br><br>

## Install docker & docker compose #https://docs.docker.com/engine/install/centos/#set-up-the-repository

```
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
```
```
yum install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
```

### Start docker service
```
systemctl start docker
```
### Enable start docker service on boot
```
systemctl enable docker
```
### Groupadd docker
```
usermod -aG docker centos
newgrp docker
chmod 666 /var/run/docker.sock
```
```
usermod –aG wheel centos
yum install nano -y
nano /etc/sudoers
```
```
## Allow root to run any commands anywhere
centos ALL=(ALL) ALL
docker ALL=(ALL) ALL
```
### Verificação da instalação
```
clear
```
```
echo "============================================="
echo -e "Verificação:\n"
echo " - python:"
python3 --version
echo -e "\n - pip:"
pip3 --version
echo -e "\n - docker:"
docker -v
echo -e "\n - docker compose:"
docker compose version
echo -e "\n\n\n"
```
