ActiveAdmin.register Appointment do
  menu :label => "Turnos", :if => proc{ current_admin_user.has_role? :manager}

  # scope :all, :default => :all
  # scope :today
  # scope :pending
  # scope :cancelled
  # scope :absent
  # scope :ordered_by_date, :default => true

  sidebar "Reportes" do
    div do
      link_to "Agenda", "/"
    end
  end

  index do
    column :date_point
    column :paciente do |a|
      a.patient.name.to_s + " " + a.patient.last_name
    end
    default_actions
  end  
  
  form do |f|                         
    f.inputs "Admin Details" do       
      f.input :office_id, :as => :hidden
      f.input :patient, :as => :select, :collection => Patient.all        
      f.input :date_point, :as => :just_datetime_picker
    end                               
    f.buttons                         
  end   

  filter :office
  filter :date_point
end
