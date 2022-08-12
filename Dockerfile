FROM node:6.17.0

WORKDIR /opt/
COPY . /opt/

RUN apt update
RUN apt install -y libusb-1.0-0-dev

RUN npm install node-gyp
RUN npm install -g grunt-cli@1.3.2
RUN npm install

ENTRYPOINT ["grunt"]
