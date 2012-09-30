ActiveAdmin.register SocialSecure do
  
  menu :label => proc{ I18n.t("active_admin.social_secures") }, :if => proc{ current_admin_user.has_role? :admin}, :parent => "Configuraciones"

  actions :index, :destroy, :new, :create, :edit, :update
end
