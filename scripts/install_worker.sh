#!/bin/bash
curl -sfL https://get.rke2.io | sudo INSTALL_RKE2_TYPE="agent" sh -
sudo systemctl enable rke2-agent --now
