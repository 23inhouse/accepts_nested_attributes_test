class Customer < ActiveRecord::Base
  has_many :orders
  belongs_to :account
  accepts_nested_attributes_for :account
end
