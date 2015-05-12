class CreateSneakers < ActiveRecord::Migration
  def change
    create_table :sneakers do |t|
      t.string :name
      t.string :brand
      t.float :cost
      t.string :color
      t.references :store, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
