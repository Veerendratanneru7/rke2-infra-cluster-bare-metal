#!/bin/bash
curl -sfL https://get.rke2.io | sudo sh -
sudo systemctl enable rke2-server --now
export KUBECONFIG=/etc/rancher/rke2/rke2.yaml
kubectl get nodes -o wide
