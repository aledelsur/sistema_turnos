ActiveAdmin.register AdminUser do     
  
  scope :managers, :default => true
  scope :admin
  scope :all

  index do                            
    column :email                     
    column :current_sign_in_at        
    column :last_sign_in_at           
    column :sign_in_count             
    default_actions                   
  end                                                        

  form do |f|                         
    f.inputs "Admin Details" do       
      f.input :email, :required => true          
      f.input :role, :as => :select, :collection => AdminUser.user_roles, :required => true         
      f.input :password , :required => true 
    end                               
    f.buttons                         
  end                                 
end                                   
