FROM node:18
RUN mkdir -p ./frontend
WORKDIR /frontend
COPY ./package*.json ./
RUN npm install
COPY ./ ./

RUN npm run build
EXPOSE 3333

# Running the app
CMD "npm" "run" "dev" "--" "-p" "3333"
