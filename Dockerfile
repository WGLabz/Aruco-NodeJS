FROM node:16-alpine3.11
LABEL maintainer="weargeniuslabs@gmail.com"

# Label Args
ARG BUILD_DATE
ARG VCS_REF
ARG BUILD_VERSION

# Labels.
LABEL org.label-schema.schema-version="1.0"
LABEL org.label-schema.build-date=$BUILD_DATE
LABEL org.label-schema.name="wglabz/node-aruco"
LABEL org.label-schema.description="Aruco marker generator with HTTP APIs using NodeJS"
LABEL org.label-schema.url="https://wglabz.in/"
LABEL org.label-schema.vcs-url="https://github.com/oksbwn/Aruco-NodeJS"
LABEL org.label-schema.vcs-ref=$VCS_REF
LABEL org.label-schema.vendor="WGLabz"
LABEL org.label-schema.version=$BUILD_VERSION
LABEL org.label-schema.docker.cmd="docker run -p 8089:8089 -d wglabz/node-aruco"

WORKDIR /usr/src/aruko

RUN npm i sharp

COPY  server.js ./

EXPOSE 8089

CMD [ "node", "server.js" ]


# docker build --no-cache=true --build-arg BUILD_DATE=$(date -u +'%Y-%m-%dT%H:%M:%SZ') --build-arg VCS_REF=`git rev-parse --short HEAD` --build-arg BUILD_VERSION=1.0.1 -t node-aruco:latest .