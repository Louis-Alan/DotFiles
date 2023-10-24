return {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    build = ':TSUpdate',
    opts = {
        highlight = { enable = true },
        indent = { enable = true },
        ensure_installed = {
            "diff",
            "javascript",
            "yaml",
            "cpp",
            "lua",
            "vim",
            "cmake",
            "css",
            "html",
            "json",
            "kotlin",
            "lua",
            "rust"
        },
        auto_install = true
    }
}
