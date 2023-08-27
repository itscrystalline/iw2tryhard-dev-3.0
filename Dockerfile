# Dockerfile

# base image
FROM arm64v8/node:alpine

# create & set working directory
RUN mkdir -p /thaddev-web-3.0
WORKDIR /thaddev-web-3.0

ARG GITHUB_ACCESS_TOKEN
# copy source files
COPY . /thaddev-web-3.0
# install dependencies
RUN pnpm install

# start app
RUN pnpm run build
EXPOSE 3000
ENTRYPOINT ["node", ".output/server/index.mjs"]