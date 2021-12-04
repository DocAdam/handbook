FROM node:latest@sha256:13621aa823b6b92572d19c08a75f7b1a061633089f37873f8b5bedb5e900e657

ENV NODE_OPTIONS=--openssl-legacy-provider

COPY . /app

RUN chown -R node:node /app
WORKDIR /app
USER node
