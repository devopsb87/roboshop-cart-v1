FROM             node:20-slim
RUN              useradd  roboshop
RUN              mkdir /app
USER             roboshop
WORKDIR          /app
COPY             package.json  server.js /app/
RUN              npm install
ENTRYPOINT       ["node", "/app/server.js"]
