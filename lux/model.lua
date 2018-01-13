-- http://guides.rubyonrails.org/active_record_basics.html
local splitPath = require('pathjoin').splitPath

local Object = require('core').Object

local Model = Object:extend()

function Model:initialize()
	p(splitPath(debug.getinfo(3).source))
	local s = splitPath(debug.getinfo(3).source)
	local file = s[#s]
	p(file)
	local table = string.sub(file, 1, string.find(file, '.lua')-1)
	self.table_name = table
	p(self.table_name)
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