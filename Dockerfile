FROM node:boron

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json

RUN npm install

# Bundle app source
COPY ..

# Port Default
EXPOSE 8080

# Running npm start
CMD[ "npm", "start" ]

