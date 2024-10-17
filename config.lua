-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", { noremap = true, silent = true })

lvim.plugins = {
  "catppuccin/nvim",
  "windwp/nvim-ts-autotag",
  {
      "folke/noice.nvim",
      event = "VeryLazy",
      dependencies = {
          "MunifTanjim/nui.nvim",
          -- OPTIONAL:
          --   `nvim-notify` is only needed, if you want to use the notification view.
          --   If not available, we use `mini` as the fallback
          -- "rcarriga/nvim-notify",
      },
  },
  {
      "wakatime/vim-wakatime",
      lazy = false,
  },
  {
      "saecki/crates.nvim",
      tag = "stable",
      config = function()
          require("crates").setup()
      end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        tailwindcss = {},
      },
    },
  },
  {
    "NvChad/nvim-colorizer.lua",
    opts = {
      user_default_options = {
        tailwindcss = true,
      },
    },
  },
}

lvim.transparent_window = true

lvim.builtin.telescope.defaults.initial_mode = "normal"
lvim.builtin.telescope.defaults.layout_strategy = "horizontal"
lvim.builtin.telescope.defaults.layout_config = {
  width = 0.8,
  height = 0.8,
}

lvim.reload_config_on_save = true
lvim.colorscheme = "catppuccin-mocha"

lvim.keys.normal_mode["<TAB>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-Tab>"] = ":BufferLineCyclePrev<CR>"
lvim.keys.normal_mode["<C-x>"] = ":BufferKill<CR>"

lvim.builtin.nvimtree.setup.view.side = "right"
lvim.builtin.nvimtree.setup.view.relativenumber = true
lvim.builtin.nvimtree.setup.view.width = 60

-- DONT UNCOMMENT THOSE SHIT!
-- lvim.builtin.indentlines.active = true
-- lvim.builtin.indentlines.options = {
-- 	use_treesitter = true,
-- }
-- lvim.builtin.treesitter.indent = { enable = true }
-- lvim.builtin.treesitter.ensure_installed = { "cpp", "ts" }

lvim.builtin.alpha.dashboard.section.header.val = {
	[[                                                                       ]],
	[[                                                                       ]],
	[[                                                                       ]],
	[[                                                                       ]],
	[[                                                                     ]],
	[[       ████ ██████           █████      ██                     ]],
	[[      ███████████             █████                             ]],
	[[      █████████ ███████████████████ ███   ███████████   ]],
	[[     █████████  ███    █████████████ █████ ██████████████   ]],
	[[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
	[[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
	[[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
	[[                                                                       ]],
	[[                                                                       ]],
	[[                                                                       ]],
}

lvim.builtin.alpha.dashboard.section.footer.val = ""

lvim.builtin.project.show_hidden = true

lvim.builtin.bufferline.active = false

-- local formatters = require "lvim.lsp.null-ls.formatters"
-- formatters.setup {
--   { command = "black" },
--   {
--     command = "prettier",
--     filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" }
--   }
-- }

-- local null_ls = require("null-ls");

-- null_ls.setup({
--   opts = {
--     sources = {
--       null_ls.builtins.formatting.prettierd,
--     }
--   }
-- })

require("nvim-ts-autotag").setup({
	opts = {
		enable_close = true,
		enable_rename = true,
		enable_close_on_slash = true,
	},
})

require("noice").setup({
	presets = {
		bottom_search = false,
	},
})

-- require("lvim.core.mason").setup()

-- require('tabnine').setup({
--   disable_auto_comment = true,
--   accept_keymap = "<C-s>",
--   dismiss_keymap = "<C-]>",
--   debounce_ms = 800,
--   suggestion_color = { gui = "#808080", cterm = 244 },
--   exclude_filetypes = { "TelescopePrompt", "NvimTree" },
--   log_file_path = nil, -- absolute path to Tabnine log file
--   ignore_certificate_errors = false,
-- })

-- lvim.format_on_save.enabled = true
