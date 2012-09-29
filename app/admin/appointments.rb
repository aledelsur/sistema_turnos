ActiveAdmin.register Appointment do
  menu :label => "Turnos", :if => proc{ current_admin_user.has_role? :manager}
end
