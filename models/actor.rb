require_relative("../db/sql_runner.rb")

class Actor

attr_accessor(:f_name, :l_name)
attr_reader(:id)

  def initialize(options)
    @id = options["id"].to_i()
    @f_name = options["f_name"]
    @l_name = options["l_name"]
  end

  def self.delete_all()
    sql = "DELETE FROM actors;"
    SqlRunner.run(sql)
  end

  def self.all()
    sql = "SELECT * FROM actors;"

    actors_hashes = SqlRunner.run(sql)
    actor_objects = actors_hashes.map { |actor| Actor.new(actor)}
    return actor_objects
  end

  def self.find(id)

  end

  def self.delete(id)

  end


  def save()
    sql = "
    INSERT INTO actors(
    f_name,
    l_name)
    VALUES ($1, $2)
    RETURNING id
    ;"

    values = [@f_name, @l_name]

    result = SqlRunner.run(sql, values)

    result_hash = result[0]
    string_id = result_hash["id"]
    @id = string_id.to_i()

  end

  def update()
    sql = "
    UPDATE actors
    SET(
      f_name,
      l_name)
      = ($1, $2)
      WHERE id = $3
    ;"

    SqlRunner.run(sql,[@f_name, @l_name, @id])

  end

  def movies()
    sql = "SELECT movies.*
    FROM movies
    INNER JOIN roles
    ON movies.id = roles.movie_id
    WHERE actor_id = $1;"

    movies = SqlRunner.run(sql, [@id])
    result = movies.map {|movie| Movie.new(movie)}
    return result

  end

# class end
end
