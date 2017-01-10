class Type < ApplicationRecord
  has_many :company_types, dependent: :destroy
  has_many :category_types, dependent: :destroy
  has_many :companies, through: :company_types
  has_many :categories, through: :category_types
end
