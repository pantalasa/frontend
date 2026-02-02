FROM node:19-alpine3.16

COPY package.json ./
RUN npm install
COPY src src
ARG tag=main
LABEL application_name="frontend-cronos"
LABEL description="Frontend for cronos.pantalasa.org"
LABEL owner="pantalasa-core-team@pantalasa.org"
LABEL source_uri="git@github.com:pantalasa-cronos/frontend.git"
EXPOSE 80
ENTRYPOINT ["node", "src/index.js"]
