class Role

  attr_reader(:id, :movie_id, :actor_id)
  attr_accessor(:fee)

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
  role_objects = role_hashes.map { |role| Actor.new(role)}
  return role_objects
end

def self.find(id)

end

def self.delete(id)

end


def save()

end

def update()

end

def movie()

end

def actor()

end



#class end
end
