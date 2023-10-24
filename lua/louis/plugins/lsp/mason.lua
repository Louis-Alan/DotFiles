return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  opts = {
    ensure_installed = {
      "codelldb",
    },
  },
  config = function()
    local mason = require("mason")

    local mason_lspconfig = require("mason-lspconfig")
    local mason_tool_installer = require("mason-tool-installer")

    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    mason_lspconfig.setup({
      ensure_installed = {
        "clangd",
        "cmake",
        "cssls",
        "html",
        "eslint",
        "gradle_ls",
        "biome",
        "tsserver",
        "kotlin_language_server",
        "lua_ls",
        "pyright",
        "rust_analyzer",
      },
      automatic_installation = true,
    })

    mason_tool_installer.setup({
      ensure_installed = {
        "prettier", -- prettier formatter
        "stylua", -- lua formatter
        "isort", -- python formatter
        "black", -- python formatter
        "pylint", -- python linter
        "eslint_d", -- js linter
        "cpplint", -- cpp linter
      },
    })
    -- astyle
  end,
}
