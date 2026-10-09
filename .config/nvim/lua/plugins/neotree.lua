return {
	"stevearc/oil.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("oil").setup()
		vim.keymap.set("n", "<leader>n", function()
			if vim.bo.filetype == "oil" then
				vim.cmd("bd")
			else
				vim.cmd("Oil")
			end
		end, {})
	end,
}
