return {
	"olimorris/codecompanion.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-treesitter/nvim-treesitter",
	},
	config = {
		adapters = {
			http = {
				csc = function()
					return require("codecompanion.adapters").extend("openai_compatible", {
						env = {
							url = [[cmd:cat ~/.csc_ai_url]],
							api_key = [[cmd:cat ~/.csc_ai_token]],
							chat_url = "/chat/completions",
							models_endpoint = "/v1/models",
						},
						headers = {
							["Content-Type"] = "application/json",
							["apikey"] = "${api_key}",
						},
						schema = { model = { default = "qwen3-30b-a3b-instruct-2507" } },
					})
				end,
			},
		},
		strategies = {
			chat = {
				adapter = "csc",
			},
			inline = {
				adapter = "copilot",
			},
			cmd = {
				adapter = "copilot",
			},
		},
	},
	opts = {
		-- NOTE: The log_level is in `opts.opts`
		opts = {
			log_level = "DEBUG",
		},
	},
}
