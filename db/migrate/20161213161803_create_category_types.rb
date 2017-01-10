class CreateCategoryTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :category_types do |t|
      t.references :category, index: true, null: false
      t.references :type, index: true, null: false
      t.timestamps
    end
  end
end
