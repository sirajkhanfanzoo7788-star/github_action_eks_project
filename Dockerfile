FROM node:20

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy app code
COPY . .

# Expose port your app listens on
EXPOSE 3000

# Start the app
CMD ["node", "server.js"]
