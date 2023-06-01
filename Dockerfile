FROM node:lts-alpine3.16
WORKDIR /
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 7070
RUN npm run build
CMD [ "node", "build/index.js" ]
