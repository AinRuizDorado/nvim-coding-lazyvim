return {

  require("fzf-lua").setup({
    fzf_opts = {
      ['--color'] = '16',
      ['--layout'] = 'reverse',
    },
    files = {
      rg_opts = "--color=never --files --hidden --follow -g '!.git' -g '!node_modules' -g '!bin' -g '!obj' -g '!platforms' -g '!lib' -g '!www' -g '!plugins'",
    },
  }),
}
