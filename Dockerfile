FROM strapi/strapi

WORKDIR /srv/app

VOLUME /srv/app

RUN npm config set registry https://r.cnpmjs.org/
RUN yarn config set registry https://r.cnpmjs.org/

ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["strapi", "develop"]