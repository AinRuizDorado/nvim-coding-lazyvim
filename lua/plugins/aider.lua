return {
  "GeorgesAlkhouri/nvim-aider",
  cmd = "Aider",
  -- Example key mappings for common actions:
  keys = {
    { "<leader>a/", "<cmd>Aider toggle<cr>", desc = "Toggle Aider" },
    { "<leader>as", "<cmd>Aider send<cr>", desc = "Send to Aider", mode = { "n", "v" } },
    { "<leader>ac", "<cmd>Aider command<cr>", desc = "Aider Commands" },
    { "<leader>ab", "<cmd>Aider buffer<cr>", desc = "Send Buffer" },
    { "<leader>a+", "<cmd>Aider add<cr>", desc = "Add File" },
    { "<leader>a-", "<cmd>Aider drop<cr>", desc = "Drop File" },
    { "<leader>ar", "<cmd>Aider add readonly<cr>", desc = "Add Read-Only" },
    { "<leader>aR", "<cmd>Aider reset<cr>", desc = "Reset Session" },
    -- Example nvim-tree.lua integration if needed
    { "<leader>a+", "<cmd>AiderTreeAddFile<cr>", desc = "Add File from Tree to Aider", ft = "NvimTree" },
    { "<leader>a-", "<cmd>AiderTreeDropFile<cr>", desc = "Drop File from Tree from Aider", ft = "NvimTree" },
  },
  dependencies = {
    { "folke/snacks.nvim", version = ">=2.24.0" },
    --- The below dependencies are optional
  },
  config = function()
    require("nvim_aider").setup({
      -- Command line arguments passed to aider
      args = {
        "--no-auto-commits",
        "--pretty",
        "--stream",
      },
      -- Automatically reload buffers changed by Aider (requires vim.o.autoread = true)
      auto_reload = true,
      -- Idle timeout in ms for Aider's output.
      idle_timeout = 5000,
      -- Response timeout in ms for Aider's first output chunk.
      response_timeout = 30000,
      -- Timeout in ms for quick commands.
      quick_idle_timeout = 500,
      -- A list of slash-commands that should have a shorter idle timeout.
      quick_commands = {
        "/add",
        "/drop",
        "/read-only",
        "/ls",
        "/clear",
        "/reset",
        "/undo",
      },
      -- Show 'Processing...' and 'Done' notifications.
      notifications = true,
      -- Theme colors (automatically uses Catppuccin flavor if available)
    })
  end,
}
