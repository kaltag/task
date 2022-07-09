class Executor < ApplicationRecord
  has_many :orders, dependent: :destroy
end
