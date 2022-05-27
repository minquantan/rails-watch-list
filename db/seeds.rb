# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# remove all instances
puts '----------------------------killing the db-------------------------------'
Movie.destroy_all
List.destroy_all
Bookmark.destroy_all

puts '------------------------Starting up the Generator-------------------------'
# define list categories
genres = %w[chick-flick action comedy drama horror erotica variety arthouse fantasy thriller]

# create a list for each genre
genres.each do |genre|
  list = List.new(name: genre)
  list.save!
  puts '-----------------------Here is a List you slimeball----------------------'

  # create some movies before the next list is created
  puts '-------------------------Turboing !the! Generator-------------------------'
  10.times do
    movie = Movie.new(
      title: Faker::Movie.title,
      overview: Faker::Movie.quote

    )

    movie.save!
    puts '---------------------Here are the movies you slimeball--------------------'
  end

  # take the newly created list and one of the newly created movies to make a new bookmark
  puts '-------------------------Burning up the Generator-------------------------'

  puts '---------You really are a lazy bastard, take this bookmark-------------'
end
