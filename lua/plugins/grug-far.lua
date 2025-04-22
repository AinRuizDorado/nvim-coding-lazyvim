-- En tu archivo de configuración de LazyVim (por ejemplo, ~/.config/nvim/lua/config/plugins.lua)
return {
  {
    "MagicDuck/grug-far.nvim",
    config = function()
      require("grug-far").setup({
        keymaps = {
          replace = { n = "sr" },
          -- qflist = { n = "<localleader>q" },
          -- syncLocations = { n = "<localleader>s" },
          -- syncLine = { n = "<localleader>l" },
          -- close = { n = "<localleader>c" },
          -- historyOpen = { n = "<localleader>t" },
          -- historyAdd = { n = "<localleader>a" },
          -- refresh = { n = "<localleader>f" },
          -- openLocation = { n = "<localleader>o" },
          -- openNextLocation = { n = "<down>" },
          -- openPrevLocation = { n = "<up>" },
          -- gotoLocation = { n = "<enter>" },
          -- pickHistoryEntry = { n = "<enter>" },
          -- abort = { n = "<localleader>b" },
          -- help = { n = "g?" },
          -- toggleShowCommand = { n = "<localleader>p" },
          -- swapEngine = { n = "<localleader>e" },
          -- previewLocation = { n = "<localleader>i" },
          -- swapReplacementInterpreter = { n = "<localleader>x" },
          -- applyNext = { n = "<localleader>j" },
          -- applyPrev = { n = "<localleader>k" },
        }, -- Aquí puedes configurar opciones del plugin si es necesario
      })
    end,
  },
}
