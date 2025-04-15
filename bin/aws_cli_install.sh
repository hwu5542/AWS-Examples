#!/usr/bin/env bash
cd /workspaces
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zipcd 
sudo ./aws/install
cd $THEIA_WORKSPACE_ROOT 