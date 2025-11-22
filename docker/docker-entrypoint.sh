#!/bin/bash

cd /opt/app

arch=$(uname -m)
if [[ "$arch" == "aarch64" || "$arch" == "arm64" || "$arch" == arm* ]]; then
  echo "arm64"
else
  echo "x86_64"
fi

# run
./webssh -p 22

