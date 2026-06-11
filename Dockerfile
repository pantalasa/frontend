FROM node:19-alpine3.16
COPY package.json ./
RUN npm install
COPY src src
ARG tag=main
LABEL application_name="frontend-cronos"
LABEL description="Frontend for cronos.pantalasa.org"
LABEL owner="pantalasa-core-team@pantalasa.org"
LABEL source_uri="git@github.com:pantalasa-cronos/frontend.git"
LABEL org.opencontainers.image.revision="${GIT_SHA}"
EXPOSE 80
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD wget -qO- http://localhost:80/ || exit 1
USER node
ENTRYPOINT ["node", "src/index.js"]
