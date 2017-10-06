You can also enjoy yourself here:
https://vide-ta-cave.herokuapp.com/

how to launch this application in you localhost?
$ git clone git@github.com:hugobarthelemy/vide_ta_cave.git
$ rake db:create
$ rake db:migrate
$ rake db:seed
$ rails s

If you want to add modification of the code :
$ rails test:system
if it's ok -> create de PR ;)

Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.
