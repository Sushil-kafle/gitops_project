#!/bin/bash
set -e

# Update packages
yum update -y

yum install -y curl

curl -sfL https://get.k3s.io | INSTALL_K3S_SKIP_SELINUX_RPM=true sh -

sleep 20

mkdir -p /home/ec2-user/.kube
cp /etc/rancher/k3s/k3s.yaml /home/ec2-user/.kube/config
chown -R ec2-user:ec2-user /home/ec2-user/.kube

sudo chmod 644 /etc/rancher/k3s/k3s.yaml
sudo chown ec2-user:ec2-user /etc/rancher/k3s/k3s.yaml

ln -s /usr/local/bin/k3s /usr/local/bin/kubectl
