class Ngo < ActiveRecord::Base
  dragonfly_accessor :logo

  has_many :requests
  belongs_to :owner, :class_name => User
  has_and_belongs_to_many :users
  def add_users(user_ids)
    user_ids.each do |id|
      u = User.where(:id => id.to_i).first
      if u
        users << u
      end
    end
  end
end
