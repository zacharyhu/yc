
        
            local args = ngx.req.get_uri_args()
	  if not args.id or not args.use or not args.free or not args.cache or not args.total or not args.swap then   --参数如果不齐全
		--ngx.say("there is some args miss .... ")
		ngx.exit(403)
	  else   --the args are all have  then   
            local mysql = require "resty.my"
            local db, err = mysql:new()
            if not db then
                ngx.say("failed to instantiate mysql: ", err)
                return
            end

            db:set_timeout(1000) -- 1 sec
            local ok, err, errno, sqlstate = db:connect()
            if not ok then
                ngx.say("failed to connect: ", err, ": ", errno, " ", sqlstate)
                return
            end

            ngx.say("connected to mysql.")
                
	    local sql = ("insert into monitor_check_mem_status(host_id,host_mem_use,host_mem_free,host_mem_cache,host_mem_total,host_mem_swap)  "
	    	.. "values (\'" .. args.id ..
				"\',\'".. args.use ..
                                        "\',\'".. args.free..
                                        "\',\'".. args.cache..
                                        "\',\'".. args.total..
                                        "\',\'".. args.swap..
                                        "\')")
            res, err, errno, sqlstate =
                db:query(sql)
            if not res then
                ngx.say("bad result: ", err, ": ", errno, ": ", sqlstate, ".")
                return
            end

            ngx.say(res.affected_rows, " rows inserted into table process ",
                   "(last insert id: ", res.insert_id, ")")

            res, err, errno, sqlstate =
                db:query("select * from monitor_check_disk_status  order by id asc")
            if not res then
                ngx.say("bad result: ", err, ": ", errno, ": ", sqlstate, ".")
                return
            end

           local cjson = require "cjson"
           ngx.say("result: ", cjson.encode(res))

	    local ok, err = db:set_keepalive(0, 100)
            if not ok then
                ngx.say("failed to set keepalive: ", err)
                return
            end

          end

