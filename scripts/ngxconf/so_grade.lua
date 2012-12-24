local sock = ngx.socket.tcp()
sock:settimeout(15000)
-----发送连接并接受welcome包-----------
local ok,err = sock:connect("10.48.179.99",9101)
if not ok then
	ngx.say("failed to connect to 9101",err)
	return
end
ngx.say("successfully connected ")

------发送用户积分查询报文-----------
local sodata = "<request service=\"GPGameData_1000\">"
		.."<user userid=\"265478\" gameid=\"230\"></user>"
		.."</request>"
		.."\r\n.\r\n"

ngx.say("start send sodata")
local bytes, err = sock:send(sodata)
local reader = sock:receiveuntil("\r\n.\r\n")
local data, err, partial = reader()
    if not data then
        ngx.say("failed to read a line: ", err)
        return
    end
    ngx.say("successfully read a line: ", data)

----更新用户积分-----------------
local args=ngx.req.get_uri_args()


local soupdatedata = "<request service=\"GPGameData_1001\">"
		.."<user userid=\"265478\" gameid=\"230\"></user>"
		.."<game coin=\"\" grade=\""..args.grade.."\" win=\"\" lose=\"\" standoff=\"\" escape=\"\" playnum=\"\"></game>"
		.."</request>"
		.."\r\n.\r\n"

ngx.say("start send soupdatedata")
local bytes, err = sock:send(soupdatedata)
local reader = sock:receiveuntil("\r\n.\r\n")
local data, err, partial = reader()
    if not data then
        ngx.say("failed to read a line: ", err)
        return
    end
    ngx.say("successfully read a line: ", data)
	

local bytes, err = sock:send(sodata)
local reader = sock:receiveuntil("\r\n.\r\n")
local data, err, partial = reader()
    if not data then
        ngx.say("failed to read a line: ", err)
        return
    end
    ngx.say("successfully read a line: ", data)



--[[
----------发送游戏点变化报文--不用收包
local socoindata ="<package><request service=\"WSGame_Frame_1000\">"
                .."<user userID=\"265478\" pass=\"123456\" authToken=\"wasutest\" source=\"1\"></user>"
                .."</request>"
                .."</package>"
                .."\r\n.\r\n"
	.."<package>"
	.."<gameUpdate service=\"WSGame_GameSAP_1205\" playerNum=\"1\" />"
	.."<player_1 userID=\"265478\" coin=\"-222222\"></player_1>"
	.."</package>"
	.."\r\n.\r\n"

ngx.say("start send coindata")
local bytes, err = sock:send(socoindata)
local reader = sock:receiveuntil("\r\n.\r\n")
local data, err, partial = reader()
    if not data then
        ngx.say("failed to read a line: ", err)
        return
    end
    ngx.say("successfully read a line: ", data)
]]--

--local reader = sock:receive()
--if not line then
--        ngx.say("failed to read a line: ", err)
--        return
--    end
--    ngx.say("successfully read a line: ", line)

sock:close()
