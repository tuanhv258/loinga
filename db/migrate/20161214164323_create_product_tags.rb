class CreateProductTags < ActiveRecord::Migration[5.0]
  def change
    create_table :product_tags do |t|
      t.references :product
      t.references :tag

      t.timestamps
    end
  end
end
