ActiveAdmin.register Office do
   menu :label => "Consultorios", :if => proc{ current_admin_user.has_role? :manager}, :parent => "Configuraciones"

  form do |f|                         
    f.inputs "Admin Details" do       
      f.input :name
      f.input :admin_user_id, :as => :hidden        
      f.input :speciality , :as => :select, :collection => []
    end                               
    f.buttons                         
  end          
end
