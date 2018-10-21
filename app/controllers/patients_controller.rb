class PatientsController < ApplicationController
  before_action :find_patient, only: [:show]

  def index
    @patients = Patient.all
  end

  def show
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.create(patient_params)
    redirect_to patient_path(@patient)
  end

  private
  def patient_params
    params.require(:patient).permit(:name, :age)
  end

  def find_patient
    @patient = Patient.find_by(id: params[:id])
  end

end
