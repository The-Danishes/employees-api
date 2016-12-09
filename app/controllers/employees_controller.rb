class EmployeesController < ApplicationController

  def show
    @employee = Employee.find_by(id: params[:id])
  end

  def index
    @employees = Employee.all
  end


end
