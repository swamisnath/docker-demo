FROM node:7-alpine
WORKDIR /app
RUN apt-get update && apt-get install -y libatomic1 && rm -rf /var/lib/apt/lists/*
ADD . /app
RUN npm install
EXPOSE 3000
CMD ["npm", "start"]
