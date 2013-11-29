class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :email
      t.string :age
      t.string :course
      t.string :university
      t.string :city
      t.string :country
      t.text :transportation_tip
      t.text :housing_tip
      t.text :visa_tip
      t.text :cultural_tip
      t.text :feeding_tip
      t.text :other_tip
      t.string :latitude
      t.string :longitude
      t.boolean :active, default: false

      t.timestamps
    end
  end
end
