_build/default/bin/step0_repl: src/step0_repl.gleam
	cp src/step0_repl.gleam src/mal.gleam
	MAL_STEP=step0_repl rebar3 escriptize
	rm src/mal.gleam

step0_repl: _build/default/bin/step0_repl