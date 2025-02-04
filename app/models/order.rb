class Order < ApplicationRecord
  has_one :customer, dependent: :destroy
  has_many :items, dependent: :destroy
  accepts_nested_attributes_for :customer, :items
end
