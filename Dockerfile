FROM node:20-alpine as frontend

WORKDIR /app

RUN npm install -g pnpm

COPY . .
COPY .env /app/

RUN pnpm install

RUN ls -a

CMD ["pnpm", "saas", "up"]

