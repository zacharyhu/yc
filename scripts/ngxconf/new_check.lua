
        
           local args = ngx.req.get_uri_args()
	   if not args.ctype then
	  --if not args.id or not args.use or not args.free or not args.cache or not args.total or not args.swap then   --参数如果不齐全
		ngx.say("there is some args miss .... ")
		ngx.exit(403)
	     else   --the args are all have  then   
	    --for key, val in pairs(args) do
             --   if type(val) == "table" then
              --      ngx.say(key, ": ", table.concat(val, ", "))
              --  else
              --      ngx.say(key, ": ", val)
              --  end
            --end
	     --------建立mysql 连接-------
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

	    -----建立redis连接----------------
	    local redis = require "resty.redis"
            local red = redis:new()

            red:set_timeout(1000) -- 1 sec
	    local ok, err = red:connect("127.0.0.1", 6379)
            if not ok then
                ngx.say("failed to connect: ", err)
                return
            end


	    ---------set_sql变量为插入监控表的sql
	    local set_sql 
	    --local set_sql = " set host_id='".. args.id .."',host_cpu_us='".. args.us .."',host_cpu_sy='".. args.sy.."',host_cpu_ni='".. args.ni.."',host_cpu_id='".. args.cpuid.."',host_cpu_wa='".. args.wa.."'"
	   -- local set_sql= " where"
            --ngx.say(args.ctype)
	    local tablename = "monitor_check_"..args.ctype.."_status"


	    --------报警项方法--------
	    
	    function warn(item)
			local res, err = red:get(item)
            		if not res then
                	ngx.say("failed to get "..item..": ", err)
                	return
            		end
			--ngx.say(res)
			--ngx.say(args.sy)
			res=tonumber(res)
			local item=tonumber(args.item)
			if item > res  then
			local warn_key=args.id.."sy"..os.date("%Y%m%d%H%M")
			local warn_val="The host "..args.id.." have warning item sy now is : "..args.item
                       	ngx.say(os.date("%Y%m%d%H%M"))
			ngx.say(warn_key)
			ngx.say(warn_val)
			ok, err = red:set(warn_key,warn_val)
		        --ok, err = red:set("connect_suc", res + 1)
                		if not ok then
                		ngx.say("failed to set 115sy201212191810: ", err)
                		return
                		end
			return
			end   --
	      end


	    -------区分监控项-----------------------
	    if args.ctype == "cpu"  then
	           ---对监控阀值进行测试
			local res, err = red:get("sy")
            		if not res then
                	ngx.say("failed to get sy: ", err)
                	return
            		end
			--ngx.say(res)
			--ngx.say(args.sy)
			res=tonumber(res)
			local sy=tonumber(args.sy)
			if sy > res  then
			local warn_key=args.id.."sy"..os.date("%Y%m%d%H%M")
			local warn_val="The host "..args.id.." have warning item sy now is : "..args.sy
                       	ngx.say(os.date("%Y%m%d%H%M"))
			ngx.say(warn_key)
			ngx.say(warn_val)
			ok, err = red:set(warn_key,warn_val)
		        --ok, err = red:set("connect_suc", res + 1)
                		if not ok then
                		ngx.say("failed to set 115sy201212191810: ", err)
                		return
                		end
			return
			end   --
		   ------------------------	
	    --ngx.say(" cpu ctype success")
            set_sql = " set host_id='".. args.id .."',host_cpu_us='".. args.us .."',host_cpu_sy='".. args.sy.."',host_cpu_ni='".. args.ni.."',host_cpu_id='".. args.cpuid.."',host_cpu_wa='".. args.wa.."'"
	    elseif args.ctype == "mem" then
	    set_sql = " set host_id='".. args.id .."',host_mem_use='".. args.use .."',host_mem_free='".. args.free.."',host_mem_cache='".. args.cache.."',host_mem_total='".. args.total.."',host_mem_swap='".. args.swap.."'"
	    elseif args.ctype == "disk" then
            set_sql = " set host_id='".. args.id .."',host_disk_use='".. args.use .."',host_disk_free='".. args.free.."',host_disk_total='".. args.total.."',host_disk_per='".. args.per.."'"
 	    elseif args.ctype == "traffic" then
            set_sql = " set host_id='".. args.id .."',host_traffic_dev='".. args.dev .."',host_traffic_rx='".. args.rx.."',host_traffic_tx='".. args.tx.."'"
 	    elseif args.ctype == "process" then
            set_sql = " set process_id='".. args.id .."',local_process_id='".. args.pid .."',process_cpu='".. args.pcpu.."',process_mem='".. args.pmem.."',process_threads_num='".. args.pnum.."',process_conn_num='".. args.pconum.."'"
	    else 
	    set_sql = " where "
	    end		    
            
	    local sql
	    sql = "insert into "..tablename.." "..set_sql
	
            res, err, errno, sqlstate =
               db:query(sql)
		--ngx.say("set sql: "..set_sql)
                --db:query_insert(tablename,set_sql)
            if not res then
                ngx.say("bad result: ", err, ": ", errno, ": ", sqlstate, ".")
                return
            end

            --ngx.say(res.affected_rows, " rows inserted into table process ",
            --       "(last insert id: ", res.insert_id, ")")

            --res, err, errno, sqlstate =
            --    db:query("select * from monitor_check_mem_status  order by id asc")
            --if not res then
             --   ngx.say("bad result: ", err, ": ", errno, ": ", sqlstate, ".")
            --    return
            --end

           --local cjson = require "cjson"
           --ngx.say("result: ", cjson.encode(res))

	    local ok, err = db:set_keepalive(0, 200)
            if not ok then
                ngx.say("failed to set keepalive: ", err)
                return
            end

          end

