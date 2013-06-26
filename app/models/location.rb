class Location < ActiveRecord::Base
  set_rgeo_factory_for_column(:latlon,
                              RGeo::Geographic.spherical_factory(:srid => 4326))

  delegate :latitude, :to => :latlon
  delegate :longitude, :to => :latlon
end
