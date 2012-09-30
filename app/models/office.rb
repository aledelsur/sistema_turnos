class Office < ActiveRecord::Base
  attr_accessible :name, :speciality_id, :admin_user_id

  belongs_to :manager, :foreign_key=>:admin_user_id, :class_name => 'AdminUser'
  belongs_to :speciality

  has_many :office_social_secures
  has_many :social_secures, :through => :office_social_secures




  has_many :appointments

  def office_ids
    offices.collect{|o| o.id}
  end

end
