# build stage
FROM node:lts AS build-stage

WORKDIR /app/site

COPY site/*.js /app/site/
COPY site/*.json /app/site/
COPY site/src /app/site/src
COPY site/static /app/site/static
COPY site/blog /app/site/blog
COPY site/docs /app/site/docs

RUN npm install
RUN npm run build

# production image
FROM nginxinc/nginx-unprivileged:stable-alpine

COPY --from=build-stage /app/site/build /usr/share/nginx/html
COPY --chown=101 nginx/default.conf /etc/nginx/conf.d/default.conf

EXPOSE 8080
USER 101

CMD ["nginx", "-g", "daemon off;"]
