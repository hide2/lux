local Model = require("./lux/model").Model

print("------------------------")
local User = Model:extend()

local u = User:new("sqlite3", "/tmp/test.sqlite3")
p(u.table)
u.table = "users"
p(u.table)
p(u.db)
