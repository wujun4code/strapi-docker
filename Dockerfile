FROM strapi/strapi

WORKDIR /srv/app

VOLUME /srv/app

RUN npm config set registry https://registry.npm.taobao.org/
RUN yarn config set registry https://registry.npm.taobao.org/

ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["strapi", "develop"]