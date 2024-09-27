#!/bin/bash
cd /etc/yum.repos.d/
mkdir repo_bak
mv *.repo repo_bak/
curl -o /etc/yum.repos.d/CentOS-Base.repo https://mirrors.aliyun.com/repo/Centos-7.repo
yum clean all
yum makecache
yum install -y epel-release.noarch
yum clean all
yum makecache
yum repolist all
