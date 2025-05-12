return {
  "ibhagwan/fzf-lua",
  opts = function(_, opts)
    -- Asegúrate de que la tabla fzf_opts existe
    opts.fzf_opts = opts.fzf_opts or {}
    -- Cambia la opción --no-scrollbar a false
    opts.fzf_opts["--no-scrollbar"] = false
    -- Asegúrate de que la tabla files existe
    opts.files = opts.files or {}
    -- Añade las opciones de ripgrep para ignorar las carpetas especificadas
    opts.files.rg_opts =
      "--color=never --files --hidden --follow -g '!.git' -g '!./bancamovil-backend' -g '!bancamovil-frontend/node_modules' -g '!bin' -g '!obj' -g '!bancamovil-frontend/platforms' -g '!lib' -g '!bancamovil_frontend/www' -g '!bancamovil-frontend/plugins'"

    -- Asegúrate de que la tabla grep existe
    opts.grep = opts.grep or {}
    -- Añade las opciones de ripgrep para ignorar las carpetas especificadas en la búsqueda de código
    opts.grep.rg_opts =
      "--color=never --line-number --column --hidden --smart-case -g '!.git' -g '!/.bancamovil-backend' -g '!bancamovil-frontend/node_modules' -g '!bin' -g '!obj' -g '!bancamovil-frontend/platforms' -g '!lib' -g '!bancamovil-frontend/www' -g '!bancamovil-frontend/plugins'"
    return opts
  end,
}
