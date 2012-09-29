ActiveAdmin.register Patient do
  menu :label => "Pacientes", :if => proc{ current_admin_user.has_role? :manager}, :parent => "Configuraciones"
end
