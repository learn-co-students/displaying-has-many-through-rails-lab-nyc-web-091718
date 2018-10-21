class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def show_date
    self.appointment_datetime.strftime('%B %d, %Y')
    # should come out in the format 'Month DD, YYYY'
  end

  def show_time
    self.appointment_datetime.strftime("at %H:%M")
    # should come out in the format 'at HH:MM' ex. 'at 20:20' for '08:20 PM'
    # test spec did not require the meridian indicator "AM or PM" that can be shown by adding %p at the end
  end
end
