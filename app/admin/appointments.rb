ActiveAdmin.register Appointment do
  menu :label => "Turnos", :if => proc{ current_admin_user.has_role? :manager}

  form do |f|                         
    f.inputs "Admin Details" do       
      f.input :office_id, :as => :hidden
      f.input :patient, :as => :select, :collection => Patient.all        
      f.input :date_point, :as => :datepicker
    end                               
    f.buttons                         
  end   
end
