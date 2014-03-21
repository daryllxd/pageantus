class PageantsController < ApplicationController
  before_action :authenticate_user!

  def create
    pageant = Pageant.new(pageant_params)
    pageant.user_id = current_user.id

    if pageant.save
      redirect_to profile_path
    else
      # pending
      redirect_to profile_path
    end
  end

  def new
  end

  private

  def pageant_params
    params.require(:pageant).permit(:name, :client, :location, :user_id)

  end
end
