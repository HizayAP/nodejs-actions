# Dockerfile simple para app Node
FROM node:18-alpine
WORKDIR /app


# copiar package.json primero para aprovechar cache
COPY package.json ./
RUN npm install --production


COPY . ./
EXPOSE 3000
CMD ["node", "index.js"]