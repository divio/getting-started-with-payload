FROM node:18-alpine

RUN apk add --no-cache libc6-compat

WORKDIR /app

COPY package.json pnpm-lock.yaml* ./
RUN corepack enable pnpm && pnpm i --frozen-lockfile

COPY . /app
RUN pnpm build

EXPOSE 80

CMD ["npm", "start", "--", "-p", "80"]
