class AppointmentsController < ApplicationController
  before_action :find_appointment, only: [:show]

  def show
  end

  private
  def appointment_params
    params.require(:appointment).permit(:appappointment_datetime, :patient_id, :doctor_id)
  end

  def find_appointment
    @appointment = Appointment.find_by(id: params[:id])
  end

end
