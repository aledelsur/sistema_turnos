class Patient < ActiveRecord::Base
  attr_accessible :name, :last_name, :address, :city, :floor, :department, :zip_code, :tel_1, :tel_2, :tel_3, :birthday, :birth_place, :document_type, :document, :admin_user_id

  belongs_to :manager, :foreign_key => :admin_user_id, :class_name => 'AdminUser'

  def complete_name
    self.name + " " + self.last_name
  end
end
