return {

  -- add gruvbox
  { "thedenisnikulin/vim-cyberpunk" },
  { "EdenEast/nightfox.nvim" }, -- lazy

  { "rebelot/kanagawa.nvim" },
  { "RRethy/nvim-base16" },
  { "yorumicolors/yorumi.nvim" },
  {
    "wnkz/monoglow.nvim",
  },
  { "bluz71/vim-moonfly-colors", 
		name = "moonfly"
	},
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "moonfly",
      -- colorscheme = "base16-windows-95",
      -- colorscheme = "kanagawa",
      -- colorscheme = "dosbox",
      -- colorscheme = "carbonfox",
      -- colorscheme = "monoglow",
    },
  },
}
