FROM node:18-alpine
WORKDIR /usr/src/
COPY package*.json server.js ./
RUN npm install
EXPOSE 3000
CMD ["node", "server.js"]