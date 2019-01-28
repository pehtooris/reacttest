FROM node:10.15.0-alpine

ENV WORKDIR=/home/node/app

WORKDIR ${WORKDIR}

COPY . ${WORKDIR}

RUN yarn --ignore-optional --pure-lockfile
RUN yarn build 

EXPOSE 5000
ENTRYPOINT ["yarn"]
CMD ["serve"]