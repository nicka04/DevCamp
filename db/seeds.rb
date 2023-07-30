# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
10.times do |blog|
    Blog.create!(
        title: "My Blog Post #{blog}",
        body: "Blog data"
    )
end
  
puts "10 blog posts created"
  
5.times do |skill|
    Skill.create!(
        title: "Skill #{skill}",
        percent: 10
     )
end
  
puts "10 blog posts created"
  
9.times do |portfolio|
      Portfolio.create!(
          title: "portfolio #{portfolio}",
          subtitle: "subtitle",
          body: "body text",
          main_image: "https://placehold.co/600x400",
          thumb_image: "https://placehold.co/350x200"
      )
end
puts "9 portfolioscreated"