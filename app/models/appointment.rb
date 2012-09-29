class Appointment < ActiveRecord::Base

  # Status attribute can be: Pending - Done - Absent - Cancelled
  attr_accessible :office_id, :patient_id, :date_point, :status

  belongs_to :office
  belongs_to :patient
end
