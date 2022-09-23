FROM node:lts-buster
 
RUN apt-get update && \https://github.com/Team-Electra5/UFA-LUCKY-SER/root/whatsAsenaDupLicated
  apt-get install -y \
  ffmpeg \
  imagemagick \
  webp && \
  apt-get upgrade -y && \
  rm -rf /var/lib/apt/lists/*

COPY package.json .

RUN npm install

COPY . .

CMD ["node", "."]
