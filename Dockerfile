# Base Image
FROM node:slim

# Set working Directory
WORKDIR /app/reactor/

# Copy package.json first and install dependencies
COPY package*.json ./

# Install the dependencies
RUN npm install

# # Copy the actual app
COPY . .

# Expose port
EXPOSE 3000

# Start the app
CMD ["npm", "run", "start"]