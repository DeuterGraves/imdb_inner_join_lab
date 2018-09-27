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

end

def self.find(id)

end

def self.delete(id)

end


def save()

end

def update()

end

def actors()

end

# class end
end
