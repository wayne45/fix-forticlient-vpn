#!/bin/bash

sudo pfctl -F all
sudo pfctl -f /etc/pf.conf
echo "pf rules reverted to macOS default"