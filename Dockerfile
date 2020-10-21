FROM node:alpine
RUN mkdir -p /code
WORKDIR /code
COPY package*.json ./
RUN yarn install
COPY . .
CMD ["yarn", "dev"]
