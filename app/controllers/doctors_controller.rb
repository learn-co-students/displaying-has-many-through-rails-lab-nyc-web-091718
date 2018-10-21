class DoctorsController < ApplicationController
  before_action :find_doctor, only: [:show]

  def index
    @doctors = Doctor.all
  end

  def show
  end

  def new
    @doctor = Doctor.new
  end

  def create
    @doctor = Doctor.create(doctor_params)
    redirect_to doctor_path(@doctor)
  end

  private
  def doctor_params
    params.require(:doctor).permit(:name, :department)
  end

  def find_doctor
    @doctor = Doctor.find_by(id: params[:id])
  end

end
