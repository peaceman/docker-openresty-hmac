FROM openresty/openresty:1.19.3.1-alpine-fat

RUN apk add --no-cache --virtual .build-deps git \
    && /usr/local/openresty/luajit/bin/luarocks install lua-resty-hmac-ffi \
    && apk del .build-deps
