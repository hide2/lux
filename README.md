# lux - Building blazing fast Web application
lux gets ?X performance of Express, ?X of Laravel.

See benchmark result of the same "blog" example:
- lux: ? #/sec
- Express: ? #/sec
- Laravel: ? #/sec

## Install
- Install Luvit

    curl -L https://github.com/luvit/lit/raw/master/get-lit.sh | sh

- Install LuaRocks

    wget https://luarocks.org/releases/luarocks-2.4.3.tar.gz

    tar zxpf luarocks-2.4.3.tar.gz

    cd luarocks-2.4.3

    ./configure; make bootstrap

- Install rapidjson

    luarocks install rapidjson

## Usage
- hello.lua
```Lua
local app = require("./luz/app").app:new()

app:get('/', function()
	return "hello"
end)
app:listen({port=8001})

print("Http Server listening at http://0.0.0.0:8001/")
```
Run:

    luvit hello.lua

## Benchmark

## Modules
- Routing
- JSON
- Database
- Model
- View
- Controller
- Request
- Response
- Session
- URL
- Filter
- Authentication
- Logging
- i18n
- Scaffolding
- LuaRocks
- doc
- demo