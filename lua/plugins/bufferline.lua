return {
  "akinsho/bufferline.nvim",
  after = "catppuccin",
  event = { "BufEnter" },
  config = function()
    require("bufferline").setup({
      options = {
        numbers = "none",
        close_command = "bdelete! %d",
        right_mouse_command = nil,
        left_mouse_command = "buffer %d",
        middle_mouse_command = nil,
        indicator = {
          icon = "▎",
          style = "icon",
        },
        buffer_close_icon = "",
        modified_icon = "●",
        close_icon = "",
        left_trunc_marker = "",
        right_trunc_marker = "",
        max_name_length = 18,
        max_prefix_length = 15,
        tab_size = 10,
        diagnostics = false,
        custom_filter = function(bufnr)
          local exclude_ft = { "qf", "fugitive", "git" }
          local cur_ft = vim.bo[bufnr].filetype
          local should_filter = vim.tbl_contains(exclude_ft, cur_ft)

          if should_filter then
            return false
          end

          return true
        end,
        show_buffer_icons = false,
        show_buffer_close_icons = true,
        show_close_icon = true,
        show_tab_indicators = true,
        persist_buffer_sort = true,
        separator_style = "bar",
        enforce_regular_tabs = false,
        always_show_bufferline = true,
        sort_by = "id",
      },
      highlights = require("catppuccin.groups.integrations.bufferline").get({
        styles = { "bold" },
      }),
      -- highlights = {
      --   buffer_selected = {
      --     italic = false,
      --   },
      --   tab_selected = {
      --     italic = false,
      --   },
      -- },
    })
    vim.keymap.set("n", "<space>bp", "<cmd>BufferLinePick<CR>", {
      desc = "pick a buffer",
    })
    vim.keymap.set("n", "<space>x", ":bdelete!<CR>", {
      noremap = true,
      silent = true,
      desc = "close current buffer",
    })
  end,
}
