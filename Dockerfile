# build stage
FROM node:lts-alpine as build-stage
MAINTAINER toni.schoenbuchner@csgis.de
WORKDIR /app
COPY ./SandDance  ./
RUN cd ./packages/sanddance-app && \
  npm install && \
  npm install parcel -g && \
  parcel build ./src/index.html

# production stage
FROM nginx:stable-alpine as production-stage
COPY --from=build-stage /app/packages/sanddance-app/dist /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
