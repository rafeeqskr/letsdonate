class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :donations, dependent: :destroy
  has_many :requests, dependent: :destroy
  has_many :owner_ngos, :class_name => 'Ngo', :foreign_key => 'owner_id'
  has_and_belongs_to_many :ngos
  dragonfly_accessor :image
  after_create :add_gravatar_image


  def add_gravatar_image
    if image_uid.blank?
      user_image_id = Digest::MD5.hexdigest(email)
      url = "http://gravatar.com/avatar/#{user_image_id}.png"
      self.image_url = url
      self.save
    end
  end
end
