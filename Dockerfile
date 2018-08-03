FROM node:carbon-alpine AS build

WORKDIR /usr/src

COPY package.json yarn.lock ./

RUN yarn

COPY index.js index.test.js ./


FROM build AS test
RUN yarn test


FROM test AS runtime
CMD [ "node", "index.js" ]