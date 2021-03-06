# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts  "Deleting reviews....."
Review.destroy_all

puts  "Deleting mission_users....."
MissionUser.destroy_all

puts  "Deleting mission_sectors....."
MissionSector.destroy_all

puts "Deleting users....."
User.destroy_all

puts "Deleting orgqnizations....."
Organization.destroy_all
# puts "Deleting missions....."
# Mission.destroy_all

puts 'Creating 4 users...'

yoann = User.create(email: "yoann@gmail.com", password: "123456", admin: true, first_name: "yoann", last_name: "yoann", username: "yoannr")
livia = User.create(email: "livia@gmail.com", password: "123456", admin: true, first_name: "livia", last_name: "livia", username: "livial")
muriel = User.create(email: "muriel@gmail.com", password: "123456", admin: true, first_name: "muriel", last_name: "muriel", username: "murielb")
bruno = User.create(email: "bruno@gmail.com", password: "123456", admin: true, first_name: "bruno", last_name: "bruno", username: "brunof")

puts 'Creating 6 organizations...'

matho = Organization.create(name: "Matho", description: "lorem")
goodkids = Organization.create(name: "Good Kids", description: "lorem")
nation = Organization.create(name: "Nation", description: "lorem")
msf = Organization.create(name: "MSF", description: "lorem")
green = Organization.create(name: "Green", description: "lorem")

puts 'Creating 12 missions...'

turtle = Mission.create(organization: matho, title: "Save Turtles", city: 'Bogota', home_category: "urgent", climate: "Tropical", cost_of_life: "<$1000/month", continent: "Africa", great_for: "Single", safety: "Low murder rate", language: "French", start_date: "2019-05-16", end_date: "2019-06-16")
culture = Mission.create(organization: green, title: "Culture is life", city: 'Paris', home_category: "urgent", climate: "Dry", cost_of_life: "<$500/month", continent: "South America", great_for: "Single", safety: "Low murder rate", language: "Spanish", start_date: "2019-05-16", end_date: "2019-06-16")
kids = Mission.create(organization: goodkids, title: "Little kids", city: 'Bogota', home_category: "urgent", climate: "Temperate", cost_of_life: "<$2000/month", continent: "South America", great_for: "Couple", safety: "Low murder rate", language: "Spanish", start_date: "2019-05-16", end_date: "2019-06-16")
music = Mission.create(organization: msf, title: "Music ", city: 'Paris', home_category: "trustyworth", climate: "Dry", cost_of_life: "<$500/month", continent: "Asia", great_for: "Single", safety: "Low murder rate", language: "Spanish", start_date: "2019-05-16", end_date: "2019-06-16")
art = Mission.create(organization: nation, title: "Save the art", home_category: "trustyworth", climate: "Dry", cost_of_life: "<$500/month", continent: "Europe", great_for: "Single", safety: "Low murder rate", language: "Spanish", start_date: "2019-05-16", end_date: "2019-06-16")
environment = Mission.create(organization: matho, title: "Tree Free", home_category: "trustyworth", climate: "Dry", cost_of_life: "<$1000/month", continent: "South America", great_for: "Single", safety: "Low murder rate", language: "Spanish", start_date: "2019-05-16", end_date: "2019-06-16")
mama = Mission.create(organization: matho, title: "turtlito", city: 'Fortaleza', home_category: "recent", cost_of_life: "<$500/month", continent: "South America", great_for: "Single", safety: "Low murder rate", language: "Spanish", start_date: "2019-05-16", end_date: "2019-06-16")
kakatoa = Mission.create(organization: goodkids, title: "Ninos", city: 'Marseille', home_category: "recent", cost_of_life: "<$2000/month", continent: "South America", great_for: "Single", safety: "Low murder rate", language: "Spanish", start_date: "2019-05-16", end_date: "2019-06-16")
africanmusic = Mission.create(organization: msf, title: "Safesound ", city: 'Paris', home_category: "recent", cost_of_life: "<$1000/month", continent: "South America", great_for: "Single", safety: "Low murder rate", language: "Spanish", start_date: "2019-05-16", end_date: "2019-06-16")
modernart = Mission.create(organization: nation, title: "VivaCultura", city: 'Lima', home_category: "recent", cost_of_life: "<$1000/month", continent: "South America", great_for: "Single", safety: "Low murder rate", language: "Spanish", start_date: "2019-05-16", end_date: "2019-06-16")
monkey = Mission.create(organization: matho, title: "Eco", city: 'Montreal', home_category: "recent", cost_of_life: "<$1000/month", continent: "South America", great_for: "Single", safety: "Low murder rate", language: "Spanish", start_date: "2019-05-16", end_date: "2019-06-16")

puts 'Creating 6 mission_users...'

MissionUser.create(user: yoann, mission: turtle, status: "accepted")
MissionUser.create(user: livia, mission: culture, status: "pending")
MissionUser.create(user: muriel, mission: kids, status: "past")
MissionUser.create(user: bruno, mission: music, status: "accepted")
MissionUser.create(user: yoann, mission: art, status: "pending")
MissionUser.create(user: livia, mission: environment, status: "pending")

puts 'Creating 2 reviews...'

Review.create(content: "Hello World Great Gig!", transparency: 4, social_impact: 3, staff_note: 4,  user: livia, mission: music)
Review.create(content: "Hello World Great Gig!", transparency: 4, social_impact: 3, staff_note: 4,  user: yoann, mission: culture)

puts 'Finished!'

["Agriculture",
"Arts & Music",
"Children & Youth",
"Education",
"Environment",
"Health & Medicine",
"Refugees",
"Water & Sanitation",
"Wildlife Protection"].each do |sector|
  Sector.create! name: sector
end


MissionSector.create!(
  mission: turtle,
  sector: Sector.first
)
MissionSector.create!(
  mission: turtle,
  sector: Sector.second
)
MissionSector.create!(
  mission: turtle,
  sector: Sector.third
)
MissionSector.create!(
  mission: culture,
  sector: Sector.fourth
)
MissionSector.create!(
  mission: culture,
  sector: Sector.second
)
MissionSector.create!(
  mission: culture,
  sector: Sector.third
)
