module("luci.controller.vnstat", package.seeall)

function index()
	entry({"admin", "status", "vnstat流量"}, alias("admin", "network", "vnstat", "graphs"), _("VnStat流量"), 90)
	entry({"admin", "status", "vnstat流量", "graphs"}, template("vnstat"), _("Graphs"), 1)
	entry({"admin", "status", "vnstat流量", "config"}, cbi("vnstat"), _("Configuration"), 2)
end
