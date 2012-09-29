class Office < ActiveRecord::Base
  attr_accessible :name, :speciality_id, :admin_user_id

  belongs_to :manager, :foreign_key=>:admin_user_id, :class_name => 'AdminUser'
  belongs_to :speciality

  has_many :appointments

end
