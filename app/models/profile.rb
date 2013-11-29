class Profile < ActiveRecord::Base
  after_validation :geocode
  geocoded_by :geo_string

  def geo_string
    [university, city, country].compact.join(', ')
  end
end
