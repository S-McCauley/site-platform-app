FROM node:18-alpine #Uses the official Node.js image

WORKDIR /app #Sets the work directory

COPY package*.json ./ #Copies package.json and package-lock.json 

RUN npm install --only=production #Installs dependencies 

COPY .. #Copy the rest of the application

EXPOSE 3000 #Exposes port 3000

CMD ["node", "src/index.js"]
