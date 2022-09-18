FROM node:lts-alpine3.14
WORKDIR /site
COPY package.json /site
RUN npm install hexo-cli -g
RUN npm install
COPY . /site
CMD hexo server
EXPOSE 4000
