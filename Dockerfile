FROM node:6.11.4

LABEL "com.dmkcode"="DMKCode"
LABEL version="1.0"
LABEL description="This image is used to create \
containers that run docsify"

ENV NODE_ENV=development 
ENV PORT=3000

ADD      ./package.json /var/www/package.json
WORKDIR   /var/www

RUN       npm install

VOLUME ["/var/www"]

EXPOSE $PORT

ENTRYPOINT ["npm", "run", "docsify-start"]