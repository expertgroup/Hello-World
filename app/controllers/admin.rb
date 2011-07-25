class Admin < Application

  def index
    render
  end
  
  def showusers
    @users = User.all
    render
  end
  
  def edituser
    @id = params[:id]
    @user = User.first(:userid=>@id)
    render
  end
  
  def updateuser
    if params[:txtfname] && params[:txtlname] && params[:txtemail]
      @firstname = params[:txtfname]
      @lastname = params[:txtlname]
      @email = params[:txtemail]
      @id = params[:id]
      if @firstname!="" && @lastname!="" && @email!=""
        #update the user details
        @user = User.first(:userid=>@id)
        @user.fname = @firstname
        @user.lname = @lastname
        @user.email = @email
        if @user.save
          @msg = "<center style='color:#088253;font-weight:bold'>Details Updated. <br /><br /><a href='/admin/showusers' class='link'>Back To listing</a></center>"
        else
          @msg = "<center style='color:red;font-weight:bold'>Some Error has occured</center><br /><br /><a href='/admin/showusers' class='link'>Back To listing</a></center>"
        end
      else
        @msg =  "<center style='color:red;font-weight:bold'>Missing Data</center><br /><br /><a href='/admin/showusers' class='link'>Back To listing</a></center>"
      end
    end
    render
  end
  
  def deleteuser
    @id = params[:id]
    @user = User.first(:userid=>@id)
    if @user.destroy
      @msg = "<center style='color:#088253;font-weight:bold'>User Deleted. <br /><br /><a href='/admin/showusers' class='link'>Back To listing</a></center>"
    else
      @msg = "<center style='color:red;font-weight:bold'>Some Error has occured<br /><br /><a href='/admin/showusers' class='link'>Back To listing</a></center>"
    end
    render
  end
end
