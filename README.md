<img src="https://travis-ci.org/hugobarthelemy/vide_ta_cave.svg?branch=master" alt="Build Status" />

# Vide ta cave
"Vide ta cave" is a code demonstration exercise. The objective is to make a copy of the site https://www.leboncoin.fr/

You can also enjoy yourself here:

https://vide-ta-cave.herokuapp.com/

# The development process
## Check backlogs
https://github.com/hugobarthelemy/vide_ta_cave/projects/1

## Development of the feature or fix a bug

## Development of the corresponding tests

## Check that the code passes the tests

## Push on production
### Push on GitHub
### Test with Travis
It's automatic ;)
### Push on staging
It's automatic ;)
### Push on production
```heroku pipelines:promote -r staging```

# How can I help ?
## You have an idea ?
Send an issues here : https://github.com/hugobarthelemy/vide_ta_cave/issues
## You want to devloppe an issues ?
### How to launch this application in you localhost?
```
git clone git@github.com:hugobarthelemy/vide_ta_cave.git
bundle install
rake db:create
rake db:migrate
rake db:seed
rails s
```
### Add modification of code
If you want to add modification of the code, check if you have phantomjs:
```brew install phantomjs```
### Test it
Dev the feature and test your feature in local
Test your app
```rails test:system```
or
```rake```
### PR
Tests it's ok ? :) -> create de PR ;)

# Others informations

Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.
