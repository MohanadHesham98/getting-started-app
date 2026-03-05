FROM node:latest
WORKDIR /app
COPY . .
RUN yarn install --production && yarn cache clean
ENTRYPOINT ["node"]
CMD ["src/index.js"]
