# 1. Use official Node.js image as base
FROM node:18

# 2. Set working directory inside container
WORKDIR /app

# 3. Copy package.json and install dependencies
COPY package.json .
RUN npm install

# 4. Copy the rest of the app
COPY . .

# 5. Expose port
EXPOSE 3000

# 6. Command to run app
CMD ["node", "server.js"]