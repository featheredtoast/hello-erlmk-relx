PROJECT = foo

.PHONY: release clean-release

release: clean-release all
	relx -o rel/$(PROJECT)

clean-release: 
	rm -rf rel/$(PROJECT)

include erlang.mk
