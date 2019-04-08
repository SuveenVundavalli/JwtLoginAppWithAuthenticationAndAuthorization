# base image
FROM node:10.15.3
LABEL maintainer="contact@suveen.me"
WORKDIR /usr/app
COPY package*.json ./
RUN npm install -qy
COPY . .
EXPOSE 3000
CMD ["yarn", "start"]
