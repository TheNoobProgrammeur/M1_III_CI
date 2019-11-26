FROM node:10-buster
COPY . /app
WORKDIR /app
ENV DATABASE_URL=postgres://psqluer:psqlpassword@localhost:5432/psdb
ENV JWT_SECRET="TOTO"
ENV API_PORT=3000
ENV API_HOST=localhost
ENV API_PROTOCOL=http
RUN yarn global add node-gyp && yarn install
RUN yarn start