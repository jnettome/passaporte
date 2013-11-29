json.array!(@profiles) do |profile|
  json.extract! profile, :name, :email, :age, :course, :university, :city, :country, :transportation_tip, :housing_tip, :visa_tip, :cultural_tip, :feeding_tip, :other_tip, :latitude, :longitude, :active
  json.url profile_url(profile, format: :json)
end
