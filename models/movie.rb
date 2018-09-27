require_relative("../db/sql_runner.rb")


class Movie

  attr_accessor(:title, :genre)
  attr_reader(:id)

def initialize(options)
  @id = options["id"].to_i
  @title = options["title"]
  @genre = options["genre"]
end

def self.delete_all()
  sql = "DELETE FROM movies;"
  SqlRunner.run(sql)
end

def self.all()
  sql= "SELECT * FROM roles;"

  movie_hashes = SqlRunner.run(sql)
  movie_objects = movie_hashes.map { |movie| Actor.new(movie)}
  return movie_objects
end

def self.find(id)

end

def self.delete(id)

end


def save(
  sql = "
  INSERT INTO movies(
  title,
  genre)
  VALUES($1, $2)
  RETURNING id
    ;"

    values = [@title, @genre]

    result = SqlRunner.run(sql, values)

    result_hash = result[0]
    string_id = result_hash["id"]
    @id = string_id.to_i()

  )


end

def update()

end

def actors()

end

# class end
end
