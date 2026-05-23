FROM             node:20-slim
RUN              useradd -d /app roboshop
RUN              mkdir /app && chown roboshop:roboshop /app
USER             roboshop
WORKDIR          /app
COPY             package.json  server.js /app/
RUN              npm install
ENTRYPOINT       ["node", "/app/server.js"]
