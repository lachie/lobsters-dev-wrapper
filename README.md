# lobsters-dev-wrapper

A non-invasive docker-compose wrapper for developing lobsters without having to install mysql, ruby etc.

The idea is to 
- check out the lobsters into this directory under `lobsters`
- use docker-compose to run the lobsters rails app and mariadb

You can then go into `lobsters` and make changes which will be automatically picked up as per usual rails.

## getting started

```
make init
or
git clone git@github.com:lobsters/lobsters.git

docker-compose up
```

```
make shell

# and then in the in-container shell:
rake db:create
rake db:schema:load
rake fake_data
rake db:seed
```

`make shell` gets you a bash via `docker-compose` / `docker exec`. It already has `bundle exec` called so you don't need to prefix rails commands with that.

Now view lobsters at http://localhost:3000 and edit code in `lobsters`.
