vim.api.nvim_create_autocmd("QuitPre", {
	desc = "Close Neo-tree before quitting (fix session restore)",
	callback = function()
		if package.loaded["neo-tree"] then
			pcall(vim.cmd, "Neotree close")
		end
	end,
})
