# Use Node.js base image
FROM node:20-alpine

# Install PM2 globally
RUN npm install -g pm2

# Set working directory
WORKDIR /app

# Copy backend package.json and install dependencies
COPY backend/package*.json ./backend/
RUN cd backend && npm install

# Copy frontend package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy all code
COPY . .

# Expose backend and frontend ports
EXPOSE 5000 3000

# Start both backend and frontend with PM2
# backend: run server.js with restart
# frontend: run "npm run dev" using pm2
CMD pm2 start backend/server.js --name backend --watch --restart-delay 1000 && \
    pm2 start "npm run dev -- --host 0.0.0.0" --name frontend --watch --restart-delay 1000 && \
    pm2 logs
