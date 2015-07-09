class Ngo < ActiveRecord::Base
  dragonfly_accessor :logo

  has_many :requests
end
