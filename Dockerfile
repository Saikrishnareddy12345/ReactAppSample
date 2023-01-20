# # Fetching the latest node image on alpine linux
# FROM node:alpine AS development

# # Declaring env
# ENV NODE_ENV development

# # Setting up the work directory
# WORKDIR /react-app

# # Installing dependencies
# COPY ./package.json /react-app
# # RUN yarn install

# # Copying all the files in our project
# COPY . .
# RUN yarn install
# # Starting our application
# CMD yarn start
# Fetching the latest node image on alpine linux
# FROM node:alpine AS development

# # Declaring env
# ENV NODE_ENV development

# # Setting up the work directory
# WORKDIR /react-app

# # Installing dependencies
# COPY ./package.json /react-app
# RUN npm install

# # Copying all the files in our project
# COPY . .

# # Starting our application
# CMD npm start
FROM node:alpine

# # Declaring env
# ENV NODE_ENV development

# Setting up the work directory
WORKDIR /app

# Installing dependencies
COPY package.json .
RUN npm install
# Copying all the files in our project
COPY . .
RUN yarn install
# RUN yarn run test
 

# Starting our application
CMD yarn start