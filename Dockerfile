
FROM ubuntu:20.04

RUN apt-get update && apt-get install -y wget unzip xvfb libxi6 libgconf-2-4

RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && \
    apt install -y ./google-chrome-stable_current_amd64.deb

RUN CHROME_VERSION=$(google-chrome --version | grep -oP '\d+\.\d+\.\d+') && \
    wget https://chromedriver.storage.googleapis.com/${CHROME_VERSION}/chromedriver_linux64.zip && \
    unzip chromedriver_linux64.zip -d /usr/local/bin/

RUN echo 'CHROME_BIN=/usr/bin/google-chrome' >> /etc/environment
