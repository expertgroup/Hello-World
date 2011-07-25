# This is a default user class used to activate merb-auth.  Feel free to change from a User to 
# Some other class, or to remove it altogether.  If removed, merb-auth may not work by default.
#
# Don't forget that by default the salted_user mixin is used from merb-more
# You'll need to setup your db as per the salted_user mixin, and you'll need
# To use :password, and :password_confirmation when creating a user
#
# see merb/merb-auth/setup.rb to see how to disable the salted_user mixin
# 
# You will need to setup your database and create a user.
class User
  include DataMapper::Resource
  
  attr_accessor :checkpassword, :password_confirmation
  
  property :userid, Integer, :serial => true
  property :username, String, :nullable => false, :length => (1..20)
  property :password, String, :nullable => false, :length => (1..20)
  property :fname, String, :nullable => false
  property :lname, String, :nullable => false
  property :email, String, :nullable => false
  property :created_at, DateTime
  property :profile_image, String, :length => 255, :nullable => true
  
  
  #validations
  
  #validates_present :fname, :autovalidation=>false, :message=>"Please enter First Name"
  #validates_present :lname, :autovalidation=>false, :message=>"Please enter Last Name"
  #validates_present :username, :autovalidation=>false, :message=>"Please enter Username"
  validates_is_unique :username, :message=>"Please enter a unique username"
  validates_format :email, :as => :email_address, :message=>"Please enter a valid email address"
  validates_is_confirmed :checkpassword, :confirm => :password_confirmation, :message=>"Password and Confirm Password do not match"
end
