vim.pack.add({
	"https://github.com/TheGLander/indent-rainbowline.nvim",
	"https://github.com/lukas-reineke/indent-blankline.nvim",
})

require("ibl").setup(require("indent-rainbowline").make_opts())
