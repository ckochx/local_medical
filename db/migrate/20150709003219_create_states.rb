class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :state_full
      t.string :state_abbr
    end
  end
end
