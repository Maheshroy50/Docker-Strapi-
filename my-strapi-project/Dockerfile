FROM node:20-alpine
ARG NODE_ENV=development
ENV NODE_ENV=${NODE_ENV}
WORKDIR /opt/app

COPY package.json ./
RUN npm install
COPY . .


# Create missing directories and set permissions
RUN mkdir -p public/uploads
# Ensure the node user owns the app directory (critical for permissions)
RUN chown -R node:node /opt/app

# Switch to non-root user for security (and to match file ownership)
USER node

RUN npm ci --only=production
EXPOSE 1337
CMD ["npm", "run", "start"]
