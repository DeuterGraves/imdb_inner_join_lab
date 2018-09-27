require_relative("./models/actor.rb")
require_relative("./models/role.rb")
require_relative("./models/movie.rb")
require("pry")

Actor.delete_all()
Role.delete_all()
Movie.delete_all()
