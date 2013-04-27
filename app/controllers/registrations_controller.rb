class RegistrationsController < Devise::RegistrationsController
    def new
      super
    end

  
  def create
    @user = User.new(params[:user])
    user_profile = @user.build_user_profile
    if @user.save
      flash[:notice] = "You have signed up successfully."
      redirect_to root_url
    else
      render :action => :new
    end
  end

  def update
    super
  end
end
