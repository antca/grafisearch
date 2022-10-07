FROM alpine:3.16

RUN mkdir /app

COPY . /app

WORKDIR /app

RUN apk add make nodejs npm go

RUN npm i -g pnpm typescript

RUN pnpm i

RUN make grafisearch

ENTRYPOINT /app/grafisearch
