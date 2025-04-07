# specify base image
FROM node:18-alpine

# set working directory
WORKDIR /app

# copy package.json and package-lock.json first
COPY ./ ./

# install dependencies
RUN npm install

# copy the rest of the application
COPY . .

# default command to run when starting the container
CMD ["npm", "start"]