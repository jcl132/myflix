# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

comedy = Category.create(name: "Comedy")
drama = Category.create(name: "Drama")

Video.create(title: "Monk", description: "Some show about monks?", small_cover_url: '/tmp/monk.jpg', large_cover_url: '/tmp/monk_large.jpg', category: drama)
Video.create(title: "Futurama", description: "Future show", small_cover_url: '/tmp/futurama.jpg', large_cover_url: '/tmp/futurama.jpg', category: comedy)
Video.create(title: "South Park", description: "Crazy kids", small_cover_url: '/tmp/south_park.jpg', large_cover_url: '/tmp/south_park.jpg', category: comedy)
Video.create(title: "Family Guy", description: "Family man", small_cover_url: '/tmp/family_guy.jpg', large_cover_url: '/tmp/family_guy.jpg', category: comedy)

Video.create(title: "Monk", description: "Some show about monks?", small_cover_url: '/tmp/monk.jpg', large_cover_url: '/tmp/monk_large.jpg', category: drama)
Video.create(title: "Futurama", description: "Future show", small_cover_url: '/tmp/futurama.jpg', large_cover_url: '/tmp/futurama.jpg', category: comedy)
Video.create(title: "South Park", description: "Crazy kids", small_cover_url: '/tmp/south_park.jpg', large_cover_url: '/tmp/south_park.jpg', category: comedy)
Video.create(title: "Family Guy", description: "Family man", small_cover_url: '/tmp/family_guy.jpg', large_cover_url: '/tmp/family_guy.jpg', category: comedy)
Video.create(title: "Family Guy", description: "Family man", small_cover_url: '/tmp/family_guy.jpg', large_cover_url: '/tmp/family_guy.jpg', category: comedy)

user1 = User.create(email: "jason@example.com", password: "briggs999", full_name: "Jason Li")