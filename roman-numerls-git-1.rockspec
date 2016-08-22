package = "roman-numerls"
version = "git-1"

source = {
	url = "https://github.com/TiagoDanin/RomanNumerals.git"
}

description = {
	summary = "Module for convert numbers in Roman numbers :)",
	detailed = "Module for convert numbers in Roman numbers :)",
	homepage = "https://tiagodanin.github.io/RomanNumerals/",
	maintainer = "Tiago Danin <TiagoDanin@outlook.com>",
	license = "GPLv2"
}

dependencies = {
	"lua >= 5.3"
}

build = {
	type = "builtin",
	modules = {
		["RomanNumerals"] = "src/RomanNumerals.lua"
	}
}
