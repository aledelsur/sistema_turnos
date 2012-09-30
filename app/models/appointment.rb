class Appointment < ActiveRecord::Base
  scope :pending, lambda{where(:status => :pending)}
  scope :done, lambda{where(:status => :done)}
  scope :absent, lambda{where(:status => :done)}
  scope :cancelled, lambda{where(:status => :done)}
  scope :today, lambda{where(:date_point => Date.today)}

  just_define_datetime_picker :date_point, :add_to_attr_accessible => true
  # Status attribute can be: :pending - :done - :absent - :cancelled
  attr_accessible :office_id, :patient_id, :date_point, :status

  belongs_to :office
  belongs_to :patient

  with_options :presence => true do |model|
    model.validates :date_point
    model.validates :patient
  end
end
