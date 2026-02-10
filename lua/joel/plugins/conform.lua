return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	cmd = {
		"ConformInfo",
	},
	keys = {},
	opts = {
		-- Define your formatters
		formatters_by_ft = {
			lua = { "stylua" },
			liquid = { "prettier" },
		},
		-- Set default options
		default_format_opts = {},
		-- Set up format-on-save
		format_on_save = { timeout_ms = 500 },
	},
	init = function()
		vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
	end,
}
