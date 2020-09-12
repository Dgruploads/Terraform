#!/bin/bash
sudo mkdir /new_data
sudo mkfs -t ext4 ${device_name}
mount ${device_name} /new_data
