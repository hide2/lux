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

function Model:_create()
end
function Model:save()
end
function Model:all()
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