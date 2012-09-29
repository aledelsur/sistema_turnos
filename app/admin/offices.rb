ActiveAdmin.register Office do
  menu :label => "Consultorios", :if => proc{ current_admin_user.has_role? :manager}, :parent => "Configuraciones"

  actions :index, :destroy, :new, :create

  #Eliminar filters
  config.clear_sidebar_sections!

  index do
    column :name
    default_actions
  end  

  form do |f|
    f.inputs do
      f.input :name
      f.input :speciality, :prompt=>"- Selecciona una especialidad -"
    end
    f.buttons
  end

end
