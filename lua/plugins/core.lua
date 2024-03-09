return {
  { "nvim-telescope/telescope.nvim", version = false },
  {
    "rose-pine/neovim",
    as = "rose-pine",
    styles = {
      italics = false,
    },
    config = function()
      vim.cmd("colorscheme rose-pine")
    end,
    version = false,
  },

  { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate", version = false },
  { "nvim-treesitter/playground", version = false },
  { "theprimeagen/harpoon", version = false },
  { "mbbill/undotree", version = false },
  { "tpope/vim-fugitive", version = false },
  { "mg979/vim-visual-multi", branch = "master", version = false },
  { "sindrets/diffview.nvim", version = false },

  { "github/copilot.vim", version = false },
}
