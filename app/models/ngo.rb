class Ngo < ActiveRecord::Base
  dragonfly_accessor :logo

  has_many :requests
  belongs_to :owner, :class_name => User
  has_and_belongs_to_many :users
end
