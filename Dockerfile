FROM node:20-alpine AS builder

WORKDIR /myapp

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

#STAGE2

FROM node:20-alpine AS runner

WORKDIR /myapp

COPY --from=builder /myapp/package*.json ./
COPY --from=builder /myapp/.next ./.next
COPY --from=builder /myapp/public ./public 
COPY --from=builder /myapp/node_modules ./node_modules

EXPOSE 3002

CMD ["npm", "start"]
