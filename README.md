## The assumptions

* Rails 3.2 and later
* PostgreSQL and PostGIS installed and configured (brew install postgresql postgis)

## The new rails project

    rails new postgis_tutorial --database=postgresql

## The Gems
Add the following gems to your Gemfile and then run bundle install

    gem 'pg'
    gem 'rgeo'
    gem 'activerecord-postgis-adapter'

Then run

    bundle install

## The Railtie
In your config/application.rb file add the line

    require 'active_record/connection_adapters/postgis_adapter/railtie'

## The database.yml file
For each of the environments make sure there is a

    adapter: postgis
    schema_search_path: "public,postgis"

## Create the model
Use rails generate to get a model, view and controller

    bundle exec rails generate scaffold Location name:string latlon:point

## The SRID
Tell your newly created model what the SRID of the latlon field will be by adding the following line to app/models/location.rb

    set_rgeo_factory_for_column(:latlon, RGeo::Geographic.spherical_factory(:srid => 4326))

## Get yourself a database
Create the database

    bundle exec rake db:create

Migrate the database

    bundle exec rake db:migrate

## I can haz some data?

    psql postgis_tutorial_development < locations.sql

## Make it easy to access the data
It is easier to write location.latitude and location.longitude than to write location.latlon.latitude and location.latlon.longitude so setup some delegates.

    delegate :latitude, :to => :latlon
    delegate :longitude, :to => :latlon

## Now go write and app and Ship It!
You now have everything you need to write an awesome app. So go ahead and do something magical.

Most importantly, Ship It!!!

## The code
http://github.com/mattdelves/postgis_tutorial

## Contribue
Fork.

Pull request.

You all know the drill.