FROM node:16-alpine
WORKDIR /usr/src/app
COPY . /usr/src/app/
COPY .env /usr/src/app/backend/
WORKDIR /usr/src/app/client
# Should RUN npm ci --only=production be used or something similar?
RUN npm install && npm run build
WORKDIR /usr/src/app/backend
# COPY cache/ /usr/src/app/
# RUN npm install express
CMD ["npm","start"]
