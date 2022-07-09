class Service < ApplicationRecord
  belongs_to :category_service
  has_and_belongs_to_many :orders

end
