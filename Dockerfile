# Use the official Node.js 14 image as the base
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy application files to the container
COPY . .

# Expose the application port
EXPOSE 3000

# Define the command to run the application
CMD [ "node", "app.js" ]
