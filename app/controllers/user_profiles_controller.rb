class UserProfilesController < ApplicationController
  def index
    if params[:interests_tag]
      @user_profiles = UserProfile.tagged_with(params[:interests_tag])
    else
      @user_profiles = UserProfile.all
    end
  end
end
