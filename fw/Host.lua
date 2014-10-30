local Object=require"fw.Object"
local M=Object:New("Host")

--function M:new(n)
	--local o=self.super.new(self,n[1])
	--print("Host:new",n[1])
	--o.ip=n.ip
	--o.net=n.net
	--return o
--end
function M:allow(...)
	self.net:allow{f=1,self:asDestination(),...}
end
function M:asSource()
	return {f=1,"--source",self.ip}
end
function M:asDestination()
	return {f=1,"--destination",self.ip}
end
function M:asAddress()
	return { self.ip }
end
function M:dnatTo(r)
	dest=r[1] or r.dest
	service=r[2] or r.service
	local prerouting=assert(Object:Get("PREROUTING"))
	prerouting:dnat{self,dest,service}
end
M.asDefault=M.asSource
return M
