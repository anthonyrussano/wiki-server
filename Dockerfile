FROM node:lts-alpine3.14
COPY package.json /
RUN npm install hexo-cli -g
RUN npm install
COPY . /
CMD hexo server
EXPOSE 4000
