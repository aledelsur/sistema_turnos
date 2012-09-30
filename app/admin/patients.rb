ActiveAdmin.register Patient do
  menu :label => "Pacientes", :if => proc{ current_admin_user.has_role? :manager}, :parent => "Configuraciones"

  actions :index, :destroy, :new, :create, :show, :edit, :update

  form :partial => "form"

  index do
    column :complete_name
    column :document
    default_actions
  end

  filter :name
  filter :last_name
  filter :city
  filter :document
  

  show :title => :complete_name

  

end
