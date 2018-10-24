# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do |user|
	user = User.create(name: Faker::Name.name)
end

15.times do |link|
	link = Post.create(link: Faker::Internet.url, user_id: rand(1..10))
end

50.times do |comment|
	comment = Comment.create(content: Faker::Lorem.sentence(3, false, 4), user_id: rand(1..10), post_id: rand(1..15))
end

50.times do |reply|
	reply = Reply.create(content: Faker::Lorem.sentence(3), user_id: rand(1..10), comment_id: rand(1..50))
end
