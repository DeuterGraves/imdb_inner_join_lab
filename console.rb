require_relative("./models/actor.rb")
require_relative("./models/role.rb")
require_relative("./models/movie.rb")
require("pry")

Actor.delete_all()
Role.delete_all()
Movie.delete_all()


actor1 = Actor.new({
  "f_name" => "Chris",
  "l_name" => "Hemsworth"
  })
actor1.save()

actor2 = Actor.new({
  "f_name" => "Scarlet",
  "l_name" => "Johanson"
  })
actor2.save()

actor3 = Actor.new({
  "f_name" => "Tom",
  "l_name" => "Holland"
  })
actor3.save()

movie1 = Movie.new({
  "title" => "Avenger: Infinity Warz",
  "genre" => "Action"
  })
movie1.save()

movie2 = Movie.new({
  "title" => "Spider-Man: Homecoming",
  "genre" => "Action"
  })
movie2.save()

movie3 = Movie.new({
  "title" => "Under the Skin",
  "genre" => "Thriller"
  })
movie3.save()

role1 = Role.new({
  "movie_id" => movie1.id,
  "actor_id" => actor1.id,
  "fee" => 4
  })
role1.save()

role2 = Role.new({
  "movie_id" => movie1.id,
  "actor_id" => actor2.id,
  "fee" => 10
  })
role2.save()

role3 = Role.new({
  "movie_id" => movie1.id,
  "actor_id" => actor3.id,
  "fee" => 6
  })
role3.save()

role4 = Role.new({
  "movie_id" => movie2.id,
  "actor_id" => actor3.id,
  "fee" => 8
  })
role4.save()

role4 = Role.new({
  "movie_id" => movie3.id,
  "actor_id" => actor3.id,
  "fee" => 15
  })
role4.save()

#binding.pry

movie1.title = "Avengers: Infinity War"
movie1.update()
actor2.f_name = "Scarlett"
actor2.l_name = "Johansson"
actor2.update()
role4.actor_id = actor2.id
role4.update()



# see all
movies = Movie.all()
actors = Actor.all()
roles = Role.all()


binding.pry
p "Let's all go to the mooooovies!"
