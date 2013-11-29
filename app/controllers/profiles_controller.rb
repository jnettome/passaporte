# encoding: utf-8
class ProfilesController < InheritedResources::Base
  respond_to :html, :json

  def permitted_params
    params.permit(:profile => [:name, :email, :age, :course, :university, :city,
      :country, :transportation_tip, :housing_tip, :visa_tip, :cultural_tip,
      :feeding_tip, :other_tip, :latitude, :longitude])
  end

  def create
    create!(:notice => "Obrigado por contribuir! Logo logo sua experiência aparecerá aqui :)") { root_url }
  end
end
