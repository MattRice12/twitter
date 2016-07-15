# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


noun = ["Matt", "Rob", "Kate", "Ahkeem", "Justin", "Dane", "Everyone", "Someone" "Anyone", "Obama", "Trump", "Ghandi", "Pikachu", "Garfield", "Einstein", "Socrates", "Roland"]
verb = ["thinks about", "hates", "votes for", "loves", "can't stop thinking about", "secretly loves", "secretly despises", "argued about", "supports", "defends"]
object = ["opening cans", "running into walls", "going on field trips", "playing with the neighbor's dog", "sorting rice", "kittens being presidents", "people that do people things", "cartoons", "the show Lost", "coffee too", "Pokemon", "Digimon too much", "Sailor Moon", "food", "music", "pokeballs", "lasagna", "philosophy", "White Walkers",]
punctuation = ["", ".", ".", ".",  "!", "?", "!?", "!!!", "??!", "!!!11!1!!11one", ' ¯\_(ツ)_/¯', ' (╯°□°）╯︵ ┻━┻', ' .·´¯`(>▂<)´¯`·.', ' ヽ(´▽｀)ノ']

user = %w(Matt Rob Kate Ahkeem Justin Dane)

user.each do |name|
  user = User.create!(name: "#{name}",
                     handle: "@#{name}",
                     email: "#{name}16@codetiy.yay"
                     )

  5.times do
    Tweet.create!(body: "#{noun.sample} #{verb.sample} #{object.sample}#{punctuation.sample}",
                  user_id: user.id,

                  )
  end
end
