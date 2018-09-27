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
    sql= "SELECT * FROM actors;"

    actors_hashes = SqlRunner.run(sql)
    actor_objects = actors_hashes.map { |actor| Actor.new(actor)}
    return actor_objects
  end

  def self.find(id)

  end

  def self.delete(id)

  end


  def save()

  end

  def update()

  end

  def movies()

  end

# class end
end
