namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(name: "Simeon Muyiwa",
                 email: "muyiwa100@yahoo.com",
                 password: "Busayo20",
                 password_confirmation: "Busayo20",
                 admin: true)
    
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@healthycorps.com"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end