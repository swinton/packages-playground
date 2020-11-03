FROM node:15
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY * ./
ENTRYPOINT [ "node", "/usr/src/app/echo.js" ]
