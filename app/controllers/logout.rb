class Logout < Application

  def index
   session.clear
   redirect "/login"
  end
  
end
