FROM idbi/php-docker:latest

LABEL "com.github.actions.name"="PHP Lint"
LABEL "com.github.actions.description"="Run PHP Lint"
LABEL "com.github.actions.icon"="eye"
LABEL "com.github.actions.color"="gray-dark"

LABEL version="1.0.0"
LABEL repository="https://github.com/ID-BI/php-lint-gh-action"
LABEL homepage="https://github.com/ID-BI/php-lint-gh-action"
LABEL maintainer="Nick Aguilar <nick.aguilar@idbi.pe>"

RUN mkdir /phplint && cd /phplint && composer require overtrue/phplint && ln -s /phplint/vendor/bin/phplint /usr/local/bin/phplint

COPY "entrypoint.sh" "/entrypoint.sh"
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]