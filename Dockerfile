# Use official Node.js runtime as base image
FROM node:18-alpine

# Set working directory in container
WORKDIR /app

# Copy package.json and package-lock.json first

# Install dependencies
RUN npm install

# Copy all application files
COPY . .

# Expose the port the app runs on
EXPOSE 8999

# Start the application
CMD ["node", "index.js"]
