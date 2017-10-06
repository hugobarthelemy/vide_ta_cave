{<img src="https://travis-ci.org/hugobarthelemy/vide_ta_cave.svg?branch=master" alt="Build Status" />}[https://travis-ci.org/hugobarthelemy/vide_ta_cave]

You can also enjoy yourself here:
https://vide-ta-cave.herokuapp.com/

how to launch this application in you localhost?
$ git clone git@github.com:hugobarthelemy/vide_ta_cave.git
$ bundle install
$ rake db:create
$ rake db:migrate
$ rake db:seed
$ rails s

If you want to add modification of the code :

check if you have phantomjs
$ brew install phantomjs

Test your app
$ rails test:system
or
$ rake

if it's ok -> create de PR ;)

Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.
