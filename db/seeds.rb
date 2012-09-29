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
