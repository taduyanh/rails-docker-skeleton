```
docker-compose run --rm backend sh -c 'bundle exec rails db:create'
docker-compose run --rm backend sh -c 'bundle exec rails db:migrate'
docker-compose run --rm backend sh -c 'EDITOR=cat rails credentials:edit'
```
