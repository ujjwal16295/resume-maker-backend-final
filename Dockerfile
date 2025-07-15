FROM ghcr.io/puppeteer/puppeteer:latest

# Set working directory
WORKDIR /usr/src/app

# Copy package files and install deps
COPY package*.json ./
RUN npm ci

# Copy all code
COPY . .

# Set the startup command
CMD ["node", "server.js"]
