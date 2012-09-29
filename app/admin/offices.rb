ActiveAdmin.register Office do
   menu :label => "Consultorios", :if => proc{ current_admin_user.has_role? :manager}, :parent => "Configuraciones"
end
