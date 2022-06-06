FROM node:18
# RUN mkdir -p ./frontend
WORKDIR /frontend
COPY ./package*.json /frontend
RUN npm install
COPY . /frontend

RUN npm run build
EXPOSE 3333

# Running the app
CMD "npm" "run" "dev" "--" "-p" "3333"
