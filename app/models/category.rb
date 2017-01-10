class Category < ApplicationRecord
  CATEGORY_PARAMS = [:id, :name, :description]

  has_many :category_types, dependent: :destroy
  has_many :types, through: :category_types
end
