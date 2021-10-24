make:
	nvim --headless -u NORC \
		--cmd 'lua require("walh.build").build()' \
		--cmd 'q'
