User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true)

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end

users = User.order(:created_at).take(6)
50.times do
  content = Faker::Lorem.sentence(5)
  users.each { |user| user.microposts.create!(content: content) }
end

# Following relationships
users = User.all
user  = users.first
following = users[2..50]
followers = users[3..40]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) } 


#Ingredients
Ingredient.create!(description: "Brocolli")
Ingredient.create!(description: "Milk")
Ingredient.create!(description: "Eggs")
Ingredient.create!(description: "Bread")
Ingredient.create!(description: "Chicken")
Ingredient.create!(description: "Sugar")
Ingredient.create!(description: "Cheese")
Ingredient.create!(description: "Cereal")
Ingredient.create!(description: "Apples")
Ingredient.create!(description: "Oranges")
Ingredient.create!(description: "Ham")
Ingredient.create!(description: "Flour")
Ingredient.create!(description: "brussel sprouts")
Ingredient.create!(description: "Wraps")
Ingredient.create!(description: "Lettuce")
Ingredient.create!(description: "Spinach")
Ingredient.create!(description: "Yogurt")

  