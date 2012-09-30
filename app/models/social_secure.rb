class SocialSecure < ActiveRecord::Base
  attr_accessible :name
  has_many :office_social_secures
  has_many :offices, :through => :office_social_secures

end
