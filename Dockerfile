FROM node:18

WORKDIR /app

# Copy package.json first
COPY src/package*.json ./

RUN npm install

# Copy full source code
COPY src/ .

EXPOSE 3000

CMD ["npm", "start"]