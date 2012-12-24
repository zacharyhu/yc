local sock = ngx.socket.tcp()
sock:settimeout(15000)
-----发送连接并接受welcome包-----------
local ok,err = sock:connect("10.48.179.103",8214)
if not ok then
	ngx.say("failed to connect to 8214",err)
	return
end
ngx.say("successfully connected ")
local reader = sock:receiveuntil("\r\n.\r\n")
local data, err, partial = reader()
    if not data then
        ngx.say("failed to read a line: ", err)
        return
    end
    ngx.say("successfully read a line------------: ", data)


----------发送游戏点变化报文--不用收包
local socoindata ="<package>"
	.."<gameUpdate service=\"WSGame_GameSAP_1205\" playerNum=\"1\" />"
	.."<player_1 userID=\"265478\" coin=\"-222222\"></player_1>"
	.."</package>"
	.."\r\n.\r\n"

ngx.say("start send coindata")
local bytes, err = sock:send(socoindata)


ngx.say("aaaaa \r bbbb \n  cccc \r\n")
--local reader = sock:receive()
--if not line then
--        ngx.say("failed to read a line: ", err)
--        return
--    end
--    ngx.say("successfully read a line: ", line)

sock:close()
