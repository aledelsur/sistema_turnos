ActiveAdmin.register Appointment do
  menu :label => "Turnos", :if => proc{ current_admin_user.has_role? :manager}

  controller do
    def absent_patient
      
    end
  end

  form do |f|                         
    f.inputs "Admin Details" do       
      f.input :office_id, :as => :hidden
      f.input :patient, :as => :select, :collection => Patient.all, :required => true
      f.input :social_secure_id, :as => :select, :collection => SocialSecure.all, :prompt=>"- Obra Social -"
      f.input :date_point, :as => :just_datetime_picker
    end                               
    f.buttons                         
  end   
end
