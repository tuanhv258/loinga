class Company < ApplicationRecord
  has_many :company_types, dependent: :destroy
  has_many :types, through: :company_types
end
