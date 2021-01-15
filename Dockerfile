FROM node:12.16.3
WORKDIR /code
ENV PORT 80
COPY package*.json /code/
RUN npm install
COPY . /code/
EXPOSE 80
CMD [ "npm", "run", "start:prod" ]