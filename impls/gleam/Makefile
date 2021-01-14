STEPS = step0_repl

.PHONY: all

all: $(STEPS)

define template
_build/default/bin/$(1): src/$(1).gleam
	cp src/$(1).gleam src/mal.gleam
	MAL_STEP=$(1) rebar3 escriptize
	rm src/mal.gleam

$(1): _build/default/bin/$(1)
endef

$(foreach s,$(STEPS),$(eval $(call template,$(s))))