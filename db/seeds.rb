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
