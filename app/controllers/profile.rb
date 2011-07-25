class Profile < Merb::Controller

  def index
    if session[:userauth]!=true
      redirect "/login"
    else
      redirect "/profile/show"
    end
  end
  
  def show
    if session[:userauth]!=true
      redirect "/login"
    end
    if session[:userid]
      @userid = session[:userid]
      @user = User.first(:userid=>@userid)
      render
    else
      redirect "/profile"
    end
  end
  
end
