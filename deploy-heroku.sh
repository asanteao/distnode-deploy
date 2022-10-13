#!/bin/bash

wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
heroku plugins:install @heroku-cli/plugin-container-registry
heroku container:login
heroku container:push web --app asanteao-distnode
heroku container:release web --app asanteao-distnode