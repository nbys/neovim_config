return {
  "nvim-telescope/telescope.nvim",
  keys = {
    {
      "<leader>fp",
      function()
        require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root })
      end,
      desc = "Find Plugin File",
    },
    -- vim.keymap.set('n', '<C-p>', builtin.find_files, {})
    --vim.keymap.set('n', '<leader>ps', builtin.live_grep, {})
    --vim.keymap.set('n', '<leader>pr', builtin.lsp_references, {})
    --vim.keymap.set('n', '<leader>pp', builtin.resume, {})
  },
}
