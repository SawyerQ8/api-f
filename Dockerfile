# Use the official Node.js LTS image as the base image
FROM node:14

# Set the working directory within the container
WORKDIR /app

# Copy package.json and package-lock.json into the container
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the application source code into the container
COPY . .

# Expose port 3000 for incoming traffic
EXPOSE 3000

# Start the Express.js application
CMD ["npm", "start"]
