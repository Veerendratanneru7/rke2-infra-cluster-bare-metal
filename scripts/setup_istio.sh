#!/bin/bash
curl -L https://istio.io/downloadIstio | ISTIO_VERSION=1.23.0 sh -
cd istio-1.23.0
export PATH=$PWD/bin:$PATH
istioctl install -y --set profile=default
kubectl -n istio-system patch svc istio-ingressgateway --type merge -p '
{
  "spec": {
    "type": "LoadBalancer",
    "loadBalancerIP": "192.168.10.245"
  }
}'
kubectl -n istio-system get svc istio-ingressgateway
