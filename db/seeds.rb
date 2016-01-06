# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'ffaker'

10.times do 
  user_params = Hash.new
  user_params[:first_name] = FFaker::Name.first_name
  user_params[:last_name] = FFaker::Name.last_name
  user_params[:password]  = "12345"
  user_params[:email] = FFaker::Internet.email
  user_params[:image] = FFaker::Avatar.image
  
  # save the user
  new_user = User.create(user_params)
  
end

20.times do
  new_company = Company.new
  new_company.name = FFaker::Company.name
  new_company.industry = FFaker::Education.major
  new_company.contact1 = FFaker::Name.name
  new_company.contact2 = FFaker::Name.name
  new_company.role = FFaker::Company.catch_phrase
  new_company.profile = FFaker::HipsterIpsum.paragraph(3)
  new_company.address = FFaker::Address.street_address
  new_company.city = FFaker::Address.city
  new_company.phone = FFaker::PhoneNumber.short_phone_number
  new_company.fax = FFaker::PhoneNumber.short_phone_number
  new_company.email = FFaker::Internet.free_email
  new_company.save
end

5.times do
  new_lawcase = Lawcase.new
  new_lawcase.title = FFaker::Internet.domain_word
  new_lawcase.internal_number = FFaker::Product.model
  new_lawcase.case_number = FFaker::Geolocation.lat
  new_lawcase.jurisdiction = FFaker::Education.school_name
  new_lawcase.law_type = FFaker::Education.major
  new_lawcase.summary = FFaker::HipsterIpsum.paragraph(3)
  new_lawcase.save
end

10.times do
  new_expert = Expert.new
  new_expert.first_name = FFaker::Name.first_name
  new_expert.last_name = FFaker::Name.last_name
  new_expert.middle_name = FFaker::Name.first_name
  new_expert.company = FFaker::Job.title
  new_expert.email = FFaker::Internet.free_email
  new_expert.address = FFaker::Address.street_address
  new_expert.city = FFaker::Address.city
  new_expert.phone = FFaker::PhoneNumber.short_phone_number
  new_expert.phone2 = FFaker::PhoneNumber.short_phone_number
  new_expert.bio = FFaker::HipsterIpsum.paragraph(2)
  new_expert.save

end

15.times do
  new_firm = Firm.new
  new_firm.name = FFaker::Company.name
  new_firm.profile = FFaker::HipsterIpsum.paragraph(3)
  new_firm.address = FFaker::Address.street_address
  new_firm.city = FFaker::Address.city
  new_firm.phone = FFaker::PhoneNumber.short_phone_number
  new_firm.fax = FFaker::PhoneNumber.short_phone_number
  new_firm.save
end