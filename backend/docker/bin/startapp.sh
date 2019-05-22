#!/bin/bash

if [ "$LOCAL_MACHINE" = 'true' ]; then
  bundle exec rails db:create
  bundle exec rails db:migrate
fi

rm -f /myapp/tmp/pids/server.pid
EDITOR=cat bundle exec rails credentials:edit
bundle exec rails server -p 3000 -b '0.0.0.0'
