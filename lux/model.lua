local splitPath = require('pathjoin').splitPath
local DB = require('./db').DB
local Object = require('core').Object

local Model = Object:extend()

function Model:initialize(driver, ...)
	self.db = DB:new(driver, ...)
	local s = splitPath(debug.getinfo(3).source)
	local file = s[#s]
	local table = string.sub(file, 1, string.find(file, '.lua')-1)
	self.table = table
end

function Model:save(row)
	local ks = {}
	local vs = {}
	for k, v in pairs(row) do
		table.insert(ks, k)
		table.insert(vs, "'"..v.."'")
	end
	local sql = string.format("insert into %s(%s) values(%s)", self.table, table.concat(ks, ','), table.concat(vs, ','))
	p("[sql]", sql)
	return self.db:run(sql)
end
function Model:all()
	local sql = string.format("select * from %s", self.table)
	p("[sql]", sql)
	return self.db:select(sql, true)
end
function Model:find_by()
end
function Model:where()
end
function Model:update()
end
function Model:destroy()
end

return {
	Model = Model,
}