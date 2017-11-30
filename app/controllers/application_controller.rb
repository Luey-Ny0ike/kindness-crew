class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # To redirect to dashboard after succesfull log in
  def after_sign_in_path_for(employer)
    @user = current_employer
    employer_path(@user)
  end

  def after_sign_out_path_for(employer)
    jobs_path
  end
end
