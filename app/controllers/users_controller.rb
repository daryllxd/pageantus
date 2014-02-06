class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.find_by_id(params[:id])
  end


  def create

    @user = User.create(user_params)
       if @user.save
         flash[:success] = "Welcome to the Sample App!"
         redirect_to @user
       else
         redirect_to faq_path
       end
  end

   private

  def user_params
    params.require(:user).permit(:username, :password)
  end


end
