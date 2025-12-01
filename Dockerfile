FROM node:lts-buster
RUN git clone https://github.com/AbdulRehman19721986/Red-x-Bot..git
WORKDIR /root/redxbot 
RUN npm install && npm install -g pm2 || yarn install --network-concurrency 1
COPY . .
EXPOSE 9090
CMD ["npm", "start"]
