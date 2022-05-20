set -o allexport
source .env
set +o allexport

#echo $ENV
APP_HOST=127.0.0.1

bundle exec rails s -p $APP_PORT -b $APP_HOST -e $ENV


