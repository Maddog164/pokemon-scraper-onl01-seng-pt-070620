class Pokemon

attr_accessor :id, :name, :type, :db

def initialize(id: nil,name:,type:,db:)
  @id = id
  @name = name
  @type = type
  @db = db
end

def self.save(name,type,db)
  db.execute("INSERT INTO pokemon (name, type) VALUES (?,?)", name,type)
end

def self.find(id,db)
  hold_poke = db.execute("SELECT * FROM pokemon WHERE id = ?",id).flatten
  name = hold_poke[1]
  type = hold_poke[2]
  Pokemon.new(id:id,name:name,type:type,db:db)
end


end
