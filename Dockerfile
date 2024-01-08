FROM node:20
WORKDIR /usr/src/users-psql-api
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
EXPOSE 4000
CMD [ "npm", "start" ]