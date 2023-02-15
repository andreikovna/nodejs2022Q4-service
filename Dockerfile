FROM node:18.6-alpine

# Create app directory
WORKDIR /app

COPY package.json /app

# Install app dependencies
RUN npm install --force

COPY . .

EXPOSE ${PORT}

CMD [ "npm", "run", "start:dev" ]