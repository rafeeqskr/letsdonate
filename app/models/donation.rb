class Donation < ActiveRecord::Base
  attr_accessor :expiry_clone_field
  belongs_to :user
  has_many :requests, dependent: :destroy
  dragonfly_accessor :image
end
