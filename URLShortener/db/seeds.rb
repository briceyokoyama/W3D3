# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ActiveRecord::Base.transaction do

  User.destroy_all

  user1 = User.create! email:"lance@smith.me"
  user2 = User.create! email:"mister@guy.dude"
  user3 = User.create! email:"b@c.d"

  ShortenedUrl.destroy_all

  ShortenedUrl.generate_url user1, "www.a.com"
  ShortenedUrl.generate_url user1, "www.🐹🐹🐹🐹🐹🐹🐹🐹🐹🐹🐹🐹.com"
  ShortenedUrl.generate_url user2, "www.ccccccccc.com"
  ShortenedUrl.generate_url user2, "www.ddddddddddddddddd.com"
  ShortenedUrl.generate_url user2, "www.eeeeeeeeeee.com"
  ShortenedUrl.generate_url user3, "www.ffffff.com"
  ShortenedUrl.generate_url user3, "www.ggggggggggggg.com"
  ShortenedUrl.generate_url user3, "www.🍌🍌🍌🍌🍌🍌🍌🍌🍌🍌🍌🍌.com"

end