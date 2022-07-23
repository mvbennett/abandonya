class AddDescriptionToHouses < ActiveRecord::Migration[6.1]
  def change
    add_column :houses, :description, :text 
  end
end
