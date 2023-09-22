require 'faker'

# Create a main sample user.
User.create!(name:  "Example User",
    email: "example@railstutorial.org",
    password:              "foobar",
    password_confirmation: "foobar",
    admin: true)

# Generate a bunch of additional users.
99.times do |n|
    name  = "Example User #{n+1}"
    email = "example-#{n+1}@railstutorial.org"
    password = "password"
    User.create!(name:  name,
          email: email,
          password:              password,
          password_confirmation: password)
  end
  