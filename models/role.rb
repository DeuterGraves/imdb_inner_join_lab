class Role

def initialize(options)
  @id = options["id"].to_i()
  @movie_id = options["movie_id"].to_i()
  @actor_id = options["actor_id"].to_i()
  @fee = options["fee"] 
end




#class end
end
