#!/usr/bin/env lua

package	= 'lua-git2'
version	= 'scm-0'
source	= {
	url	= 'git://github.com/Neopallium/luagit2.git'
}
description	= {
	summary	= "LibGit2 bindings for Lua.",
	detailed	= '',
	homepage	= 'https://github.com/Neopallium/luagit2',
	license	= 'MIT',
	maintainer = "Robert G. Jakabosky",
}
dependencies = {
	'lua >= 5.1',
}
external_dependencies = {
	GIT2 = {
		header = "git2.h",
		library = "git2",
	}
}
build	= {
	type = "builtin",
	modules = {
		git2 = {
			sources = { "pre_generated-git2.nobj.c" },
			libraries = { "git2" },
		}
	}
}
