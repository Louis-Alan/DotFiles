return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  dependencies = "xiyaowong/transparent.nvim",
  config = function()
    require("catppuccin").setup({
      flavour = "frappe", -- latte, frappe, macchiato, mocha
    })
    vim.cmd.colorscheme("catppuccin")
    local transparent = require("transparent")
    transparent.setup({ -- Optional, you don't have to run setup.
      groups = { -- table: default groups
        "Normal",
        "NormalNC",
        "Comment",
        "Constant",
        "Special",
        "Identifier",
        "Statement",
        "PreProc",
        "Type",
        "Underlined",
        "Todo",
        "String",
        "Function",
        "Conditional",
        "Repeat",
        "Operator",
        "Structure",
        "LineNr",
        "NonText",
        "SignColumn",
        "CursorLineNr",
        "EndOfBuffer",
      },
      extra_groups = { "lualine", "NvimTreeNormal" }, -- table: additional groups that should be cleared
      exclude_groups = {}, -- table: groups you don't want to clear
    })
    vim.keymap.set("n", "<Leader>tt", ":TransparentToggle <CR>")
  end,
}
