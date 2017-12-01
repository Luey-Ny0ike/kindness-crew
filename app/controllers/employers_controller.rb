class EmployersController < ApplicationController
  def show
    @employer = current_employer
    @jobs = @employer.jobs.all
  end
end
