FROM node:18-alpine
WORKDIR /app
COPY . .
RUN cd express-master && npm install
EXPOSE 3000
CMD node /app/express-master/examples/hello-world/index.js
