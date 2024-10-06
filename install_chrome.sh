#!/bin/bash
# Update package list and install dependencies
sudo apt-get update
sudo apt-get install -y wget unzip xvfb libxi6 libgconf-2-4

# Install Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y ./google-chrome-stable_current_amd64.deb

# Install ChromeDriver using webdriver-manager
python3 -c "from webdriver_manager.chrome import ChromeDriverManager; ChromeDriverManager().install()"
