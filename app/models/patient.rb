class Patient < ActiveRecord::Base
  #attr_accessible :title, :body
  belongs_to :manager, :foreign_key => :admin_user_id, :class_name => 'AdminUser'
end
