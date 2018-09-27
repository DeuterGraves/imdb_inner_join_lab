require_relative("../db/sql_runner.rb")


class Movie

  attr_accessor(:title, :genre)
  attr_reader(:id)

def initialize(options)
  @id = options["id"].to_i
  @title = options["title"]
  @genre = options["genre"]
end



# class end
end
