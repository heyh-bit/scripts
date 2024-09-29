#!/bin/bash
yum remove git -y
yum install curl-devel expat-devel gettext-devel openssl-devel zlib-deve gcc-c++ perl-ExtUtils-MakeMaker -y
yum remove git -y
cd /usr/src
wget https://www.kernel.org/pub/software/scm/git/git-2.7.3.tar.gz --no-check-certificate
tar -zxvf git-2.7.3.tar.gz
cd git-2.7.3
make configure
./configure --prefix=/usr/git
make profix=/usr/git
make install
echo  '#GIT_HOME' >> /etc/profile
echo 'GIT_HOME=/usr/git' >> /etc/profile
echo 'PATH=$PATH:$GIT_HOME/bin' >> /etc/profile
source /etc/profile
git --version
