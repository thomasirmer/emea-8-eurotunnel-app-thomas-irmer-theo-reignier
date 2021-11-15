FROM quay.io/ibmgaragecloud/node:lts-stretch

WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .

EXPOSE 3000
CMD [ "npm", "start" ]