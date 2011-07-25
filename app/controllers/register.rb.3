class Register < Application

  def index
    if params[:btnsubmit]
      @username = params[:txtusername]
      @fname = params[:txtfname]
      @lname = params[:txtlname]
      @email = params[:txtemail]
      @password = params[:txtpassword]
      @confirmpassword = params[:txtconfirmpassword]
      @user = User.create(:username=>@username, :fname=>@fname, :lname=>@lname, :email=>@email, :password=>@password, :password_confirmation=>@confirmpassword, :checkpassword=>@password)
      if @user.valid?
        @user.save
        @newuserid = @user.userid
        #following code will upload this image file if given
        if params[:datafile]
          @img = params[:datafile]
          if @img!=""
            puts params[:datafile].inspect
            FileUtils.mv params[:datafile][:tempfile].path, "/vagrant/playground/hello_world/public/profileimages/#{params[:datafile][:filename]}"
            @profileimage = params[:datafile][:filename]
            @user = User.first(:userid=>@newuserid)
            @user.profile_image = @profileimage
            @user.save
          end
        end
        session[:userauth] = true
        session[:userid] = @newuserid
        #redirect "/profile/show/#@newuserid"
        redirect "/profile/show"
      else
        @showerrors = @user.errors
        render
      end
    else
      render
    end
  end
end
