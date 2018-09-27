class Role

  attr_reader(:id)
  attr_accessor(:fee, :movie_id, :actor_id)

def initialize(options)
  @id = options["id"].to_i()
  @movie_id = options["movie_id"].to_i()
  @actor_id = options["actor_id"].to_i()
  @fee = options["fee"]
end

  def self.delete_all()
    sql = "DELETE FROM roles;"
    SqlRunner.run(sql)
  end

def self.all()
  sql= "SELECT * FROM roles;"

  role_hashes = SqlRunner.run(sql)
  role_objects = role_hashes.map { |role| Role.new(role)}
  return role_objects
end

def self.find(id)

end

def self.delete(id)

end


def save()
  sql = "
  INSERT INTO roles(
  movie_id,
  actor_id,
  fee)
  VALUES($1, $2, $3)
  RETURNING id;"

  values = [@movie_id, @actor_id, @fee]

  result = SqlRunner.run(sql, values)

  result_hash = result[0]
  string_id = result_hash["id"]
  @id = string_id.to_i()


end

def update()
  sql = "
  UPDATE roles
  SET(
    movie_id,
    actor_id,
    fee)
    = ($1, $2, $3)
    WHERE id = $4
  ;"

  SqlRunner.run(sql, [@movie_id, @actor_id, @fee, @id])
end

def movie()
    sql = "SELECT * FROM movies
    WHERE id = $1"

    result = SqlRunner.run(sql, [@movie_id])
    movie_hash = result[0]
    movie = Movie.new(movie_hash)
    return movie

end

def actor()
  sql = "SELECT * FROM actors
  WHERE id = $1"

  result = SqlRunner.run(sql, [@actor_id])
  actor_hash = result[0]
  actor = Actor.new(actor_hash)
  return actor

end



#class end
end
