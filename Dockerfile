FROM node:8

COPY . /fragments
WORKDIR /fragments

RUN apt-get update && \
    apt-get install -y sudo lsof
RUN npm install
RUN npx setup-local-chains
