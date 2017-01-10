class CreateCompanyTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :company_types do |t|
      t.references :company, index: true, null: false
      t.references :type, index: true, null: false
      t.timestamps
    end
  end
end
