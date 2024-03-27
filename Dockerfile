FROM node:lts

ENV NODE_ENV production
ENV PORT 3000

WORKDIR /app
COPY src ./
COPY package*.json ./
COPY scripts ./

RUN npm ci --only=production
RUN npm run build

EXPOSE 3000

CMD ["node", "src/Server.js"]