local s=require"fw.Proto"
return {
	ssh=s:new{"ssh",proto="tcp",port=22},
	http=s:new{"http",proto="tcp",port=80},
	https=s:new{"https",proto="tcp",port=443},
	httpalt=s:new{"httpalt",proto="tcp",port=8080},
	sip=s:new{"sip",proto={"tcp","udp"},port=5060},
	iax2=s:new{"iax2",proto="udp",port=4569},
	dundi=s:new{"dundi",proto="udp",port=4520},
	smtp=s:new{"smtp",proto="tcp",port=25},
	dns=s:new{"dns",proto={"tcp","udp"},port=53},
	bootps=s:new{"bootps",proto={"udp"},port=67},
	bootpc=s:new{"bootpc",proto={"udp"},port=68},
	squid=s:new{"squid",proto={"tcp"},port=3128},
	ntp=s:new{"ntp",proto={"udp"},port=123},
	rdp=s:new{"rdp",proto={"tcp"},port=3389},
	svn=s:new{"svn",proto={"tcp"},port=3690},
	rsync=s:new{"rsync",proto={"tcp"},port=873},
	syslog=s:new{"syslog",proto={"udp"},port=514},
	ipp=s:new{"ipp",proto={"tcp"},port=631},
	bitcoin=s:new{"bitcoin",proto={"tcp"},port=8333},
	bitcointest=s:new{"bitcointest",proto={"tcp"},port=18333},
	imaps=s:new{"imaps",proto={"tcp"},port=993},
	smtpsubmission=s:new{"smtpsubmission",proto={"tcp"},port=587},
	nrpe=s:new{"nrpe",proto={"tcp"},port=5666},
	icinga=s:new{"icinga",proto={"tcp"},port=5665},
	varnish=s:new{"varnish",proto={"tcp"},port=6081},
}
