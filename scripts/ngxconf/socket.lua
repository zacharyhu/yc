local sock = ngx.socket.tcp()
sock:settimeout(15000)
local ok,err = sock:connect("10.48.179.103",8214)
if not ok then
	ngx.say("failed to connect to 8214",err)
	return
end
ngx.say("successfully connected ")
local line, err, partial = sock:receive()
    if not line then
        ngx.say("failed to read a line: ", err)
        return
    end
    ngx.say("successfully read a line: ", line)
    local redis = require "resty.redis"
            local red = redis:new()

            red:set_timeout(1000) -- 1 sec
local ok, err = red:connect("127.0.0.1", 6379)
            if not ok then
                ngx.say("failed to connect: ", err)
                return
            end
	    local res, err = red:get("connect_suc")
            if not res then
                ngx.say("failed to get connect_suc: ", err)
                return
            end
	    if res == ngx.null then
                ngx.say("connect_suc not found.")
		ok, err = red:set("connect_suc", 1)
		if not ok then
                ngx.say("failed to set connect_suc: ", err)
                return
            	end

            	ngx.say("set result: ", ok)
                return
            else
		ok, err = red:set("connect_suc", res + 1)
                if not ok then
                ngx.say("failed to set connect_suc: ", err)
                return
                end
                
                ngx.say("set result: ",res.." status", ok)
                return
	     end
  	    
sock:close()
