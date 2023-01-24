FROM ubuntu:18.04
RUN apt-get update -y
# RUN add-apt-repository ppa:deadsnakes/ppa -y
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt install python3.7 -y -y
RUN apt install python3-pip -y
RUN python3.7 -m pip install --upgrade pip
RUN apt-get update -y
RUN apt --fix-broken install -y
RUN python3.7 -m pip install -U setuptools
RUN python3.7 -m pip install -U Pyrogram
RUN python3.7 -m pip install -U tgcrypto
RUN python3.7 -m pip install redis
RUN apt-get install redis-server -y
# RUN systemctl enable redis-server.service -y
#RUN curl -sL https://deb.nodesource.com/setup_12.x | sudo bash - && sudo apt-get update && sudo apt install nodejs -y && sudo npm install -g pm2
COPY . /app/
WORKDIR /app/
CMD bash start
