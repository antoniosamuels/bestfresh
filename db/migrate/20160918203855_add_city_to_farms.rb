class AddCityToFarms < ActiveRecord::Migration[5.0]
  def change
    add_column :farms, :city, :string
  end
end
