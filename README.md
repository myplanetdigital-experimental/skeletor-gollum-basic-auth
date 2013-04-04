This repo is intended to test and demonstrate how a wiki subdirectory
from the drupal-skeletor project can be used in an authenticated gollum
wiki on heroku.


Usage
_____

    $ git clone --recursive https://github.com/myplanet-experimental/skeletor-gollum-simple-auth.git
    $ cd skeletor-gollum-simple-auth
    $ export GOLLUM_USERNAME=admin
    $ export GOLLUM_PASSWORD=sekret
    $ bundle install
    $ bundle exec rackup -p1234 config.ru
