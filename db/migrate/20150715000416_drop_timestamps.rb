class DropTimestamps < ActiveRecord::Migration
  def up
    remove_column :states, :updated_at
    remove_column :states, :created_at
    remove_column :city_zip_codes, :updated_at
    remove_column :city_zip_codes, :created_at
  end
  def down
    add_column :states, :updated_at, :datetime
    add_column :states, :created_at, :datetime
    add_column :city_zip_codes, :updated_at, :datetime
    add_column :city_zip_codes, :created_at, :datetime
  end
end
