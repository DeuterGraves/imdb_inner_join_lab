require_relative("../db/sql_runner.rb")

class Actor

attr_accessor(:f_name, :l_name)
attr_reader(:id)

  def initialize(options)
    @id = options["id"].to_i()
    @f_name = options["f_name"]
    @l_name = options["l_name"]
  end



# class end
end
