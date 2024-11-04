--[[
By Oliver Webb (c) 2024, Under 0BSD License

See 2nd edition AWK book page 88 -> 90
--]]
-- [Symbol][Reference][Value]
bnflist = {
	TCALFACT = {
		{
		"Did you know that",
		"TEVENT",
		"TEFFECT",
		"because of",
		"TBECAUSE",
		"?",
		"Apparently",
		"TAPPARENT"
		},
	},
	TAPPARENT = {
		{"it causes a predictable increase in car accidents."},
		{"that's why we have leap seconds."},
		{"scientists are really worried."},
		{"it was even more extreme during the", "TAGE"},
		{"there's a proposal to fix it, but it", "TBUT"},
		{"it's getting worse and no one knows why."},
	},
	TBUT = {
		{"will never happen."},
		{"actually makes things worse."},
		{"is stalled in congress."},
		{"might be unconstitutional."}
	},
	TAGE = {
		{"bronze age."},
		{"ice age."},
		{"cretaceous."},
		{"1990s."}
	},
	TBECAUSE = {
		{"timezone legislation in", "TPLACE"},
		{"a decree by the pope in the 1500s"},
		{"T3DEF", "of the", "TBPLACE"},
		{"a magnetic field reversal"},
		{"an arbitrary decision by", "TPERSON"}
	},
	TPERSON = {
		{"Benjamin Franklin"},
		{"Issac Newton"},
		{"FDR"}
	},
	T3DEF = {
		{"precession"},
		{"libration"},
		{"nutation"},
		{"libation"},
		{"eccentricity"},
		{"obliquity"},
	},
	TLINE = {
		{"International Date"},
		{"Mason-Dixon"}
	},
	TBPLACE = {
		{"Moon"},
		{"Sun"},
		{"Earth Axis"},
		{"Equator"},
		{"prime meridian"},
		{"TLINE", "line"},
	},
	TPLACE = {
		{"India"},
		{"Arizona"},
		{"Russia"}
	},
	TEVENT = {
		{ "the", "TOSEASON", "equinox" },
		{ "the", "TESEASON", "TSOO" },
		{ "the", "TEORLATE", "TSUNRSET" },
		{ "daylight", "TSAVINGS", "time" },
		{ "the leap", "TDAYYEAR"},
		{"Easter"},
		{ "the", "TMOONS", "moon"},
		{"Toyota truck month"},
		{"Shark Week"}
	},
	TEFFECT = {
		{"happens", "TTIME", "every year"},
		{"drifts out of sync with the", "TEFEV"},
		{"might", "THAPPEN", "this year"}
	},
	THAPPEN = {
		{"not happen"},
		{"happen twice"}
	},
	TTIME = {
		{"earlier"},
		{"later"},
		{"at the wrong time"}
	},
	TEFEV = {
		{"sun"},
		{"moon"},
		{"zodiac"},
		{"TCALS", "calendar"},
		{"atomic clock in Colorado"}
	},
	TCALS = {
		{"Gregorian"},
		{"Mayan"},
		{"Lunar"},
		{"iPhone"},
	},
	TMOONS = {
		{"harvest"},
		{"blood"},
		{"super"},
	},
	TDAYYEAR = {
		{"day"},
		{"year"}
	},
	TSAVINGS = {
		{"saving"},
		{"savings"}
	},
	TEORLATE = {
		{"earliest"},
		{"latest"},
	},
	TSUNRSET = {
		{"sunrise"},
		{"sunset"}
	},
	TOSEASON = {
		{"fall"},
		{"spring"}
	},
	TESEASON = {
		{"winter"},
		{"summer"}
	},
	TSOO = {
		{"Solstice"},
		{"Olympics" }
	}
}

function resolve(sym)
	if (not bnflist[sym]) then
		io.write(sym .. " ")
	else
		local x = bnflist[sym][math.random(#bnflist[sym])]
		for i = 1,#x do resolve(x[i]) end
	end
end

resolve("TCALFACT")
