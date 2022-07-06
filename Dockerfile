#Install image with apline and node 14.
FROM node:14-alpine

#Copy the appliction directory to the container.
COPY . /bootcamp-app
#Set working directory
WORKDIR /bootcamp-app
# Expose port 8080
EXPOSE 8080

# Install dependencies
RUN npm install 
CMD npm run initdb
CMD npm run dev