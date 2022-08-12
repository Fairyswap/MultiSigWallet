FROM node:12-bullseye

WORKDIR /opt/
COPY . /opt/

RUN apt update
RUN apt install -y libusb-1.0-0-dev

RUN npm install node-gyp
RUN npm install

ENTRYPOINT ["npm", "run", "test-dapp"]
