require_relative("./models/actor.rb")
require_relative("./models/role.rb")
require_relative("./models/movie.rb")
require("pry")

Actor.delete_all()
Role.delete_all()
Movie.delete_all()

# see all
movies = Movie.all
actors = Actor.all
roles = Role.all



binding.pry
p "Let's all go to the mooooovies!"
