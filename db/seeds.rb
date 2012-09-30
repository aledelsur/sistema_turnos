# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = AdminUser.where(:role => :admin).first
unless user
  AdminUser.create(:email => "lucasminissale@gmail.com", :password => "123456", :role => :admin)
  AdminUser.create(:email => "alealvarez.00@gmail.com", :password => "alejandro", :role => :admin)
end

speciality = Speciality.first
unless speciality
  Speciality.create(:name => "Alergia")
  Speciality.create(:name => "Cardiologia")
  Speciality.create(:name => "Cirugia Plastica y estetica")
  Speciality.create(:name => "Clinica medica")
  Speciality.create(:name => "Dermatilogia")
  Speciality.create(:name => "Deportologia")
  Speciality.create(:name => "Estimulacion temprana y psicomotricidad")
  Speciality.create(:name => "Ginecologia y Obstetricia")
  Speciality.create(:name => "Kinesiologia y rehabilitacion")
  Speciality.create(:name => "Medicina Estetica")
  Speciality.create(:name => "Neurologia")
  Speciality.create(:name => "Neuropsicologia")
  Speciality.create(:name => "Nutricion")
  Speciality.create(:name => "Ortopedia infantil")
  Speciality.create(:name => "Pediatria")
  Speciality.create(:name => "Psicologia")
  Speciality.create(:name => "Psicopedagogia")
  Speciality.create(:name => "Psiquiatria")
  Speciality.create(:name => "Traumatologia")
end

social_secure = SocialSecure.find_by_name("OSDE")
unless social_secure
  o = SocialSecure.create(:name=>"OSDE")
  puts "Creating Social Secure " + o.name
end

social_secure = SocialSecure.find_by_name("OSECAC")
unless social_secure
  o = SocialSecure.create(:name=>"OSECAC")
  puts "Creating Social Secure " + o.name
end

social_secure = SocialSecure.find_by_name("OSPAT")
unless social_secure
  o = SocialSecure.create(:name=>"OSPAT")
  puts "Creating Social Secure " + o.name
end

social_secure = SocialSecure.find_by_name("OSPERYHRA")
unless social_secure
  o = SocialSecure.create(:name=>"OSPERYHRA")
  puts "Creating Social Secure " + o.name
end

social_secure = SocialSecure.find_by_name("Paramed")
unless social_secure
  o = SocialSecure.create(:name=>"Paramed")
  puts "Creating Social Secure " + o.name
end

social_secure = SocialSecure.find_by_name("Pleno")
unless social_secure
  o = SocialSecure.create(:name=>"Pleno")
  puts "Creating Social Secure " + o.name
end

social_secure = SocialSecure.find_by_name("Swiss Medical Group")
unless social_secure
  o = SocialSecure.create(:name=>"Swiss Medical Group")
  puts "Creating Social Secure " + o.name
end

social_secure = SocialSecure.find_by_name("Seros")
unless social_secure
  o = SocialSecure.create(:name=>"Seros")
  puts "Creating Social Secure " + o.name
end

social_secure = SocialSecure.find_by_name("Medife")
unless social_secure
  o = SocialSecure.create(:name=>"Medife")
  puts "Creating Social Secure " + o.name
end

social_secure = SocialSecure.find_by_name("Galeno")
unless social_secure
  o = SocialSecure.create(:name=>"Galeno")
  puts "Creating Social Secure " + o.name
end
