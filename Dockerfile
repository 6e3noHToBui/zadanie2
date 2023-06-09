FROM node:alpine as builder
WORKDIR '/app'
COPY package.json .
RUN --mount=type=cache,target=/app/node_modules npm install
COPY . .
RUN --mount=type=cache,target=/app/node_modules npm run build

FROM nginx
EXPOSE 80
COPY --from=builder /app/build /usr/share/nginx/html
