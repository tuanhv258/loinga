class Product < ApplicationRecord
  belongs_to :company
  belongs_to :category
  has_many :product_tags, dependent: :destroy
  has_many :tags, through: product_tags
end
