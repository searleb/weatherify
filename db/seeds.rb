# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Histoy.create(:location => 'Sydney', :weather => '', :dob => '1959/12/28', :image =>'http://www.thenewsgrind.com/wp-content/uploads/2010/06/andy-mcnab.jpg')
User.destroy_all
History.destroy_all
Track.destroy_all

u1 = User.create(:username => 'bill', :avatar => 'yes', :password => 'hello', :password_confirmation => 'hello', :is_admin => true)
u2 = User.create(:username => 'ros', :avatar => 'yes', :password => 'hello', :password_confirmation => 'hello')