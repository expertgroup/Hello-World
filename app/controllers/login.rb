class Login < Application
  
  def index
    if params[:txtusername] && params[:txtpassword]
      @username = params[:txtusername]
      @password = params[:txtpassword]
      @user = User.first(:username=>@username, :password=>@password)
      if @user!=nil
        session[:userauth] = true
        session[:userid] = @user.userid
        redirect "/profile/show"
      else
        @loginerror = "The entered username/password are incorrect"
        #redirect "/login"
        render
      end
    else
      render
    end
  end
  
end
