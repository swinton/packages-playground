FROM node:15
LABEL org.opencontainers.image.source https://github.com/swinton/packages-playground
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY * ./
ENTRYPOINT [ "node", "/usr/src/app/echo.js" ]
