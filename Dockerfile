## Manual Build Instructions:
##
## Build the Images:
## docker build . anthonyrussano/wiki:amd64
## docker build . anthonyrussano/wiki:arm64
##
## Create/Update the Manifest:
## `docker manifest create anthonyrussano/wiki:latest anthonyrussano/wiki:amd64 anthonyrussano/wiki:arm64
## `docker manifest push --purge anthonyrussano/wiki:latest`
## `docker manifest inspect anthonyrussano/wiki:latest`
##
FROM node:lts-alpine3.14

WORKDIR /site
COPY package.json /site
COPY dep /site
RUN chmod +x /site/dep
RUN npm install hexo-cli -g
RUN npm install

COPY . /site

CMD hexo server
EXPOSE 4000
