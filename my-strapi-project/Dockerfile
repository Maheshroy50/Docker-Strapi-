FROM node:20-alpine
ARG NODE_ENV=development
ENV NODE_ENV=${NODE_ENV}
WORKDIR /opt/app

COPY package.json ./
RUN npm install
COPY . .

RUN npm run build
EXPOSE 1337
CMD ["npm", "run", "develop"]
