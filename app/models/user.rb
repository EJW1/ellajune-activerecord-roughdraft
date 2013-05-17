class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :email, :username, :user_profile_attributes

  has_one :user_profile, :dependent => :destroy
  has_many :links
  has_many :comments
  has_many :votes

  accepts_nested_attributes_for :user_profile, :allow_destroy => true

  acts_as_messageable

    def self.search(search)
      if search
         joins(:user_profile).where('name LIKE ?', "%#{search}%")
      else
        find(:all)
      end
    end

    def name
      user_profile.name
    end

    #Returning the email address of the model if an email should be sent for this object (Message or Notification).
    #If no mail has to be sent, return nil.
    #def mailboxer_email(object)
    #Check if an email should be sent for that object
      #if true
        #return "define_email@on_your.model"
      #if false
        #return nil
    #end

end
