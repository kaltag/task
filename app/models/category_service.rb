class CategoryService < ApplicationRecord
  has_many :services, dependent: :destroy
end
