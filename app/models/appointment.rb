class Appointment < ActiveRecord::Base
  just_define_datetime_picker :date_point, :add_to_attr_accessible => true
  # Status attribute can be: Pending - Done - Absent - Cancelled
  attr_accessible :office_id, :patient_id, :date_point, :status

  belongs_to :office
  belongs_to :patient

  with_options :presence => true do |model|
    model.validates :date_point
    model.validates :patient
  end
end
