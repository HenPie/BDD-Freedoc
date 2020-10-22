# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

20.times do 
  city = City.create(city: Faker::Nation.capital_city)
  speciality = Speciality.create(speciality: Faker::Job.field)
end

50.times do
  doctor = Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.first_name, zip_code: Faker::Code.npi, city: City.all.sample)
  patient = Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.first_name, city: City.all.sample)
end

100.times do  
  appointment = Appointment.create(doctor: Doctor.all.sample, patient: Patient.all.sample, date: Faker::Date.forward(days: 90), city: City.all.sample)
  jointable = Join.create(doctor: Doctor.all.sample, speciality: Speciality.all.sample)
end