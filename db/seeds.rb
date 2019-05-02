# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(username: 'donny', first_name: 'Don', last_name: 'Tee', password: 'password')
User.create(username: 'ryan', first_name: 'Ryan', last_name: 'Arr', password: 'password')
User.create(username: 'dave', first_name: 'Dave', last_name: 'Kay', password: 'password')

Website.create(url: 'http://cnn.com/politics', root_url: 'http://cnn.com')
Website.create(url: 'http://diginn.com/lasagna', root_url: 'http://diginn.com')
Website.create(url: 'http://imdb.com/avengers_endgame', root_url: 'http://imdb.com')

Trumpet.create(summary: "Article claimed I am a liar", trumpet_type: 'Missing source', content: 'Liar, liar, pants on fire.', user_id: 1, website_id: 1)
Trumpet.create(summary: "Ryan claimed lasagna contained a piece of glass", trumpet_type: 'Fact check', content: 'The lasagna had a piece of glass in it.', user_id: 2, website_id: 2)
Trumpet.create(summary: "Dave claimed the movie was three hours long", trumpet_type: 'Fact check', content: 'The movie was three hours long!', user_id: 3, website_id: 3)

Reaction.create(reaction_type: "cheer", user_id: 1, trumpet_id: 1)
Reaction.create(reaction_type: "cheer", user_id: 2, trumpet_id: 2)
Reaction.create(reaction_type: "cheer", user_id: 3, trumpet_id: 3)
Reaction.create(reaction_type: "jeer", user_id: 2, trumpet_id: 1)
Reaction.create(reaction_type: "jeer", user_id: 3, trumpet_id: 1)
