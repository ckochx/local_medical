class AddIndicies < ActiveRecord::Migration
  def change
    add_index :states, :slug
    add_index :city_zip_codes, :slug
  end
end
