class EmployersController < ApplicationController
  def show
    @employer = current_employer
  end
end
