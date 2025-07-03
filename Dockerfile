FROM node:20
WORKDIR /app
COPY package.json ./
RUN npm install yarn
RUN yarn install --frozen-lockfile
COPY . .
# RUN yarn build
# EXPOSE 5003
# CMD ["yarn", "dev"] 
# FROM kingindnorth03/my-nextjs-frontend:latest