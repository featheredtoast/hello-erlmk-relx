PROJECT = foo

ERLC_OPTS = +debug_info +'{parse_transform,lager_transform}'

DEPS = lager
dep_lager = https://github.com/basho/lager.git


.PHONY: release clean-release

release: clean-release all
	relx -o rel/$(PROJECT)

clean-release: 
	rm -rf rel/$(PROJECT)

include erlang.mk
