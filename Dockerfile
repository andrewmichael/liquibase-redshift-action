FROM 353817990488.dkr.ecr.eu-west-2.amazonaws.com/liquibase-redshift:1.0.1

RUN mkdir -p /src
COPY src /src/

ENTRYPOINT ["/src/main.sh"]
