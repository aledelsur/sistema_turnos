class Appointment < ActiveRecord::Base
  scope :pending, lambda{where(:status => :pending)}
  scope :done, lambda{where(:status => :done)}
  scope :absent, lambda{where(:status => :done)}
  scope :cancelled, lambda{where(:status => :done)}
  scope :today, lambda{where(:date_point => Date.today)}
  
  default_scope order("date_point asc")

  just_define_datetime_picker :date_point, :add_to_attr_accessible => true
  # Status attribute can be: Pending - Done - Absent - Cancelled
  attr_accessible :office_id, :patient_id, :date_point, :status, :social_secure_id

  belongs_to :office
  belongs_to :patient
  belongs_to :social_secure


  with_options :presence => true do |model|
    model.validates :date_point
    model.validates :patient
  end

  def has_status?(status)
    get_status == status  
  end

  def get_status
    status.to_sym
  end
  

end
