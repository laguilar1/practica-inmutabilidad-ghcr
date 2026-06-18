FROM node:18-alpine

WORKDIR /app

# Copiamos archivos de dependencias e instalamos
COPY package*.json ./
RUN npm install --only=production

# Copiamos el resto del código fuente
COPY . .

EXPOSE 3000

CMD ["npm", "start"]