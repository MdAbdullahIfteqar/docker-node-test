FROM node:19-alpine

COPY package.json /app/
COPY src /app/

WORKDIR /app

RUN npm install --package package.json

# Expose port 3000 inside the container
EXPOSE 3000

# Define environment variable
ENV PORT 3000

CMD ["node", "server.js"]