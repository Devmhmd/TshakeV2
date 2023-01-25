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
RUN apt install curl -y
RUN apt-get install nodejs -y
#RUN npm i -g pm2
# RUN systemctl enable redis-server.service -y
RUN curl -sL https://deb.nodesource.com/setup_12.x | sudo bash -
COPY . /app/
WORKDIR /app/
RUN pip install -r requirements.txt
CMD bash start
