FROM composer:1.10

LABEL version="1.0.0"
LABEL repository="https://github.com/dingo-d/phpstan-wp-action"
LABEL homepage="https://github.com/dingo-d/phpstan-wp-action"
LABEL maintainer="Denis Žoljom <denis.zoljom@gmail.com>"

RUN composer global require --no-progress szepeviktor/phpstan-wordpress
RUN ln -s /tmp/vendor/bin/phpstan /usr/local/bin/phpstan
COPY entrypoint /usr/local/bin/entrypoint
ENTRYPOINT ["/usr/local/bin/entrypoint"]