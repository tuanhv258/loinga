class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :code
      t.float :price
      t.float :sale_price
      t.float :price
      t.float :shipping_fee
      t.text :description
      t.string :type
      t.string :size

      t.timestamps
    end
  end
end
