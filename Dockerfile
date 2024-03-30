FROM node:21.7-alpine as builder
WORKDIR /app
copy package.json .
RUN npm install
COPY . .
RUN yarn build

# stage 2
FROM nginx:1.25.4
WORKDIR /usr/share/nginx/html
RUN rm -rf ./*
COPY --from=builder /app/build .
ENTRYPOINT ["nginx", "-g", "daemon off;"]

