ActiveAdmin.register_page "ConfigurateSocialSecures" do
  
  menu :label => proc{ I18n.t("active_admin.configurate_social_secures") }, :if => proc{ current_admin_user.has_role? :manager}, :parent => "Configuraciones"

  controller do
    def index
      @social_secures = SocialSecure.all
    end
  
  end

  content do
    render :partial => "admin/configurate_social_secures/index"
  end


end