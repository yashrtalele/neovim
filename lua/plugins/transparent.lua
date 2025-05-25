return {
  "xiyaowong/transparent.nvim",
  lazy = false,
  config = function()
    require("transparent").setup({
      extra_groups = {
        -- Fidget
        "FidgetTask",
        "FidgetTitle",
        "FidgetWindow",

        -- LSP floating windows
        "NormalFloat",
        "FloatBorder",
        "LspInfoBorder",

        -- Lint / Diagnostics
        "DiagnosticFloatingError",
        "DiagnosticFloatingWarn",
        "DiagnosticFloatingInfo",
        "DiagnosticFloatingHint",
        "DiagnosticVirtualTextError",
        "DiagnosticVirtualTextWarn",
        "DiagnosticVirtualTextInfo",
        "DiagnosticVirtualTextHint",

        -- You might want this if you're using borders with LSP UIs
        "DiagnosticSignError",
        "DiagnosticSignWarn",
        "DiagnosticSignInfo",
        "DiagnosticSignHint",

        -- Completion popups (e.g., nvim-cmp)
        "Pmenu",
        "PmenuSel",
        "PmenuSbar",
        "PmenuThumb",

        "NotifyBackground", -- base window background
        "NotifyERRORBody",
        "NotifyWARNBody",
        "NotifyINFOBody",
        "NotifyDEBUGBody",
        "NotifyTRACEBody",
      },
    })
  end,
}
