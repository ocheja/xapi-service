FROM node:8@sha256:09cf39a09c227a0c4f8df7b864fb1c32462166669172628f86cb45d87e7aac2f
ENV NPM_CONFIG_LOGLEVEL warn
WORKDIR /usr/src/app

COPY package.json package.json
COPY yarn.lock yarn.lock
RUN yarn install --production --ignore-engines
COPY dist dist

EXPOSE 80
CMD ["yarn", "start"]
