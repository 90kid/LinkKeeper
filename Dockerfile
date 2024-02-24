# Use the official Node.js image as the base image
FROM node:18-alpine
# If you're using M1, M2 Mac, try this: 
# FROM  --platform=linux/amd64 node:16.14.0-alpine

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Copy .env.example to .env
COPY .env.example .env

# Install dependencies
RUN npm install

# Copy the application files
COPY . .

# Expose the port
EXPOSE 3000

# Start the application
#TODO change to dev.Dockerfile and normal Dockerfile
CMD [ "npm", "start" ]