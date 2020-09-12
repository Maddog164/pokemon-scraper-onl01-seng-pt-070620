class Pokemon

attr_accessor :id, :name, :type, :db

def initialize(id: nil,name:,type:,db:)
  @id = id
  @name = name
  @type = type
  @db = db
end

def self.save(name,type,database_connection)
  database_connection.execute("INSERT INTO pokemon (name, type) VALUES (?,?)", name,type)
end

end
