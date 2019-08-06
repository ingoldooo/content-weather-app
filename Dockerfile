FROM node
LABEL org.label-schema.version=1.1
ENV NODE_ENV="production"
ENV PORT 3001
ARG SRC_DIR=/var/node

RUN mkdir -p $SRC_DIR
ADD src/ $SRC_DIR
WORKDIR $SRC_DIR
RUN npm install
RUN chmod u+x ./bin/www
EXPOSE $PORT
ENTRYPOINT ./bin/www
