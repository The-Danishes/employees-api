class Api::V2::EmployeesController < ApplicationController

  def show
    @employee = Employee.find_by(id: params[:id])
  end

  def index
    @employees = Employee.all
  end

  def create
    @employee = Employee.new(first_name: params[:first_name], last_name: params[:last_name], email: params[:email])
    render :show
  end

  def update
    @employee = Employee.find_by(id: params[:id])
    @employee.assign_attributes(first_name: params[:first_name], last_name: params[:last_name], email: params[:email])
    @employee.save
    render :show
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    render json: { message: "Employee #{params[:id]} successfully deleted!" }
  end


end
