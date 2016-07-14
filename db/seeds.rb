# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


noun = ["Matt", "Rob", "Kate", "Ahkeem", "Justin", "Dane"]
verb = ["sees", "hears", "thinks about", "hates", "loves", "can't stop thinking about", "secretly dispises"]
object = ["eggs", "giraffes", "elephants", "kittens", "dogs", "people", "cartoons", "the show Lost", "coffee"]

user = ["Matt", "Rob", "Kate", "Ahkeem", "Justin", "Dane"]

user.each do |name|
  user = User.create!(name: "#{name}",
                     handle: "@#{name}",
                     email: "#{name}16@codetiy.yay"
                     )

  5.times do
    Tweet.create!(body: "#{noun.sample}
                         #{verb.sample}
                         #{object.sample}",
                  user_id: user.id
                  )
  end
end
