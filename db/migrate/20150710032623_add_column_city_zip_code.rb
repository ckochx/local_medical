class AddColumnCityZipCode < ActiveRecord::Migration
  def change
    add_column :city_zip_codes, :created_at, :datetime
    add_column :city_zip_codes, :updated_at, :datetime
    add_column :city_zip_codes, :slug, :string
    add_column :states, :created_at, :datetime
    add_column :states, :updated_at, :datetime
    add_column :states, :slug, :string
  end
end
