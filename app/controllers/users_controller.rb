class UsersController < ApplicationController
  def new
    if request.post?
      @title = "You're almost done!"
      @user = User.new(name: params[:fullname].gsub(/\s+/, "").downcase,
                      fullname: params[:fullname],
                      email: params[:email],
                      password: params[:password])
      @user.valid?
      render "new", locals: { passw: params[:password] }
    else
      @title = "Create a new user"
      @user = User.new
      render "new", locals: { passw: "" }
    end
  end
  
  #def create
  #    @title = "Error"
  #    @user = User.new(params[:user])
  #    @user.valid?
  #    render "new", locals: { passw: "" }
  #end
end
