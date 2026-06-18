FROM node:18-alpine

# Añade esta línea (reemplaza con tu usuario y repo exacto)
LABEL org.opencontainers.image.source=https://github.com/laguilar1/practica-inmutabilidad-ghcr

WORKDIR /app

# Copiamos archivos de dependencias e instalamos
COPY package*.json ./
RUN npm install --only=production

# Copiamos el resto del código fuente
COPY . .

EXPOSE 3000

CMD ["npm", "start"]