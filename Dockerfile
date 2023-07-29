FROM node:14-alpine
WORKDIR /usr/src/app
COPY package*.json test.js ./
RUN npm install
EXPOSE 8081
CMD ["node", "test.js"]
