class HomeController < ApplicationController
  def index
    if user_signed_in?
      redirect_to profile_path
    else
      redirect_to landing_path
    end
  end


  private

  #REFACTOR
  # def profile_path
    # if current_user.profile_type == 'MedicalInstitution'
    #   medical_institution_profile_path
    # elsif current_user.profile_type == 'Doctor'
    #   doctor_profile_path
    # else
    #   landing.path
    # end
  # end
end
