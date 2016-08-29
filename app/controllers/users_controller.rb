class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    user = User.name(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to todos_path
    else
      render :new
    end

  end

  def edit
    @user = current_user
  end

  def update
      user = User.find params[:id]

        puts "*"*100
        puts params[:user][:avatar]
        
      if user.update(avatar: params[:user][:avatar])
        redirect_to todos_path
      else
        render :edit
      end
  end


  private

  def user_params
    params[:user].permit(:email, :password)
  end

end
