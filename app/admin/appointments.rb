ActiveAdmin.register Appointment do
  menu :label => "Turnos", :if => proc{ current_admin_user.has_role? :manager}

  scope :all, :default => :all
  scope :today
  scope :pending
  scope :cancelled
  scope :absent
  scope :done
  
  form do |f|                         
    f.inputs "Admin Details" do       
      f.input :office_id, :as => :hidden
      f.input :patient, :as => :select, :collection => Patient.all        
      f.input :date_point, :as => :just_datetime_picker
    end                               
    f.buttons                         
  end   
end
