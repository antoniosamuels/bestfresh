class CreateFarms < ActiveRecord::Migration[5.0]
  def change
    create_table :farms do |t|
      t.string :name
      t.string :address
      t.string :hours
      t.string :genre
      t.text :content

      t.timestamps
    end
  end
end
