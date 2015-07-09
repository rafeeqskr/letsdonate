class Request < ActiveRecord::Base
  belongs_to :ngo
  belongs_to :user
  belongs_to :donation
  
end
