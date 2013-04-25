module RegistrationsHelper
  def setup_user(user)
    user.user_profile ||= UserProfile.new
    user
  end
end
