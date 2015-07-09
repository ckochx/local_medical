class CityZipCodes < ActiveRecord::Migration
  def change
    create_table :city_zip_codes do |t|
      t.string :zip
      t.string :primary_city
      t.string :alternate_names
      t.string :county
      t.string :area_codes
      t.decimal :lattitude
      t.decimal :longitude
      t.integer :estimated_population
      t.integer :state_id
    end
  end
end
