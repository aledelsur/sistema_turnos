class AdminUser < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  scope :admin, lambda{where(:role => :admin)}
  scope :managers, lambda{where(:role => :manager)}

  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :role
  # attr_accessible :title, :body
  with_options :presence => true do |model|
    model.validates :role
  end

  has_many :offices

  def has_role?(role) # => :admin, :manager . Ex: If user.has_role?(:manager) do....
    get_role == role
  end

  def get_role
    role.to_sym
  end

  def self.user_roles
    [
      ["Super Admin", :admin],
      ["Cliente", :manager]
    ]
  end
end
