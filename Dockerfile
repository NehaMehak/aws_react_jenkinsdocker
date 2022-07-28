FROM ubuntu:latest
RUN apt update && apt upgrade -y

RUN mkdir /app

WORKDIR /app
ENV PATH /app/node_modules/.bin:$PATH

COPY package.json ./
COPY package-lock.json ./

RUN apt-get install npm -y
RUN apt-get install react-scripts -y

COPY . ./
EXPOSE 5000
CMD ["npm", "start"]
