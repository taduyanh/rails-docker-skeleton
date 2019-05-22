FROM node:8 as builder

WORKDIR /app
ENV PATH /app/node_modules/.bin:$PATH

COPY package.json yarn.lock /app/
RUN yarn install

COPY . ./

EXPOSE 8080
CMD ["yarn", "run", "dev"]
