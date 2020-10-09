FROM strapi/strapi

WORKDIR /srv/app

VOLUME /srv/app

RUN npm config set registry http://mirrors.tencentyun.com/npm
RUN yarn config set registry http://mirrors.tencentyun.com/npm

ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["strapi", "develop"]