# # base image
# FROM node:alpine

# # create & set working directory
# RUN mkdir -p /thaddev.com
# WORKDIR /thaddev.com

# # copy source files
# COPY . /thaddev.com
# # install dependencies
# RUN npm install --production

# # start app
# RUN npm run build
# EXPOSE 3000
# ENTRYPOINT ["node", ".output/server/index.mjs"]

FROM node:20
ENV PNPM_HOME="/pnpm"
ENV PATH="$PNPM_HOME:$PATH"
RUN corepack enable
COPY . /app
WORKDIR /app

RUN --mount=type=cache,id=pnpm,target=/pnpm/store pnpm install
RUN pnpm run build

EXPOSE 3000
ENTRYPOINT ["node", "/app/.output/server/index.mjs"]