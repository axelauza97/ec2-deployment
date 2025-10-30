FROM node:20-alpine

# Set working directory
WORKDIR /app
COPY test/package.json ./
COPY test/package-lock.json ./

# Install dependencies
RUN npm install

COPY test/. .

# Build the Next.js app
RUN npm run build

# Expose port 3000
EXPOSE 3000

# Start the app
CMD ["npm", "start"]