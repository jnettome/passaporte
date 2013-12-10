json.type 'FeatureCollection'
json.features do
  json.array!(@profiles) do |profile|

    json.type 'Feature'
    json.geometry do
      json.type 'Point'
      json.coordinates [profile.longitude, profile.latitude]
    end

    json.set! :properties do
      json.extract! profile, :name, :email, :age, :course, :university, :city, :country, :transportation_tip, :housing_tip, :visa_tip, :cultural_tip, :feeding_tip, :other_tip, :active
      json.url profile_url(profile)

      json.set! 'marker-symbol', 'college'
      json.set! 'marker-color', '#eb925c'
      json.set! 'marker-size', 'medium'
    end
  end
end
