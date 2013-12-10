PROJECT = foo_app

.PHONY: release clean-release

release: clean-release all
	relx -V3 -o rel/$(PROJECT)

clean-release: 
	rm -rf rel/$(PROJECT)

include erlang.mk
