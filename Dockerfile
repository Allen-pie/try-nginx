# node base image
FROM node:22

WORKDIR /app

COPY images ./images
COPY index.html .
COPY server.js .
COPY package.json .

RUN npm install

EXPOSE 3000

CMD ["node", "server.js"]




