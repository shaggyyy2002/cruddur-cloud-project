FROM node:16.18

WORKDIR /frontend

COPY . /frontend

RUN npm install

ENV PORT=3000

EXPOSE ${PORT}

CMD ["npm", "start"]