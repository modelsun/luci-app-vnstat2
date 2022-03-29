module("luci.controller.vnstat", package.seeall)

function index()
	entry({"admin", "status", "vnstat"}, alias("admin", "network", "vnstat", "graphs"), _("VnStat流量"), 90)
	entry({"admin", "status", "vnstat", "graphs"}, template("vnstat"), _("Graphs"), 1)
	entry({"admin", "status", "vnstat", "config"}, cbi("vnstat"), _("Configuration"), 2)
end
