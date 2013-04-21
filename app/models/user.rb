class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :email, :username

  has_one :user_profile, :dependent => :destroy
  has_many :links
  has_many :comments
  has_many :votes

  accepts_nested_attributes_for :user_profile, :allow_destroy => true
end
