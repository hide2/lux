local Model = require("./lux/model").Model

local UserModel = Model:extend()

local User = UserModel:new("sqlite3", "/tmp/test.sqlite3")
print("------------------------ User:new")
p(User.table)
p(User.db)

-- prepare db
User.db:run"DROP TABLE user"
User.db:run[[
  CREATE TABLE user(
    id  INT PRIMARY KEY,
    name  VARCHAR(50),
    email VARCHAR(50)
  )
]]
local list = {
	{ id=1, name="Jose das Couves", email="jose@couves.com", },
	{ id=2, name="Manoel Joaquim", email="manoel.joaquim@cafundo.com", },
	{ id=3, name="Maria das Dores", email="maria@dores.com", },
}

print("------------------------ User:save")
for i, p in pairs (list) do
	User:save({id=p.id, name=p.name, email=p.email})
end

print("------------------------ User:all")
p(User:all())