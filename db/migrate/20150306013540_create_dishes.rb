class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :title
      t.string :rating
      t.text :comment
      t.references :restaurant, index: true

      t.timestamps
    end
  end
end
