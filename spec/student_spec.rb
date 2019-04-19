require_relative 'spec_helper'

describe Student do
  before :each do
    DB[:conn].execute("DROP TABLE IF EXISTS students")

    sql = <<-SQL
      CREATE TABLE IF NOT EXISTS students (
      id INTEGER PRIMARY KEY, 
      name TEXT, 
      grade INTEGER
      )
    SQL

    DB[:conn].execute(sql)
    DB[:conn].results_as_hash = true
  end

    end
  end
end
