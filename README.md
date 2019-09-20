# lobsters-dev-wrapper

A non-invasive docker-compose wrapper for developing lobsters without having to install mysql, ruby etc.

## getting started

```
make init
docker-compose up
```

```
make shell
# and then in the shell:
rake db:cretate
rake db:schema:load
rake fake_data
rake db:seed
```
