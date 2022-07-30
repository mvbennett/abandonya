class AddPriceToHouses < ActiveRecord::Migration[6.1]
  def change
    add_column :houses, :price, :integer
  end
end
