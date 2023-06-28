local plugins = {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "gopls",

        -- DevOps stuff (terraform, Docker, ansible, etc.)
        "terraform-ls",
        "ansible-language-server",
        "dockerfile-language-server",
        "bash-language-server",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "hcl",
        "terraform",
      }
    }
  }
}
return plugins
