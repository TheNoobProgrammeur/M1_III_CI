FROM circleci/node:10-buster
COPY . /app
WORKDIR /app
RUN yarn global add node-gyp && yarn install
RUN yarn start