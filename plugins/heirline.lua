local colors = {
  fg = '#d4d4d4',
  bg = '#68217a',
}

return {
  "rebelot/heirline.nvim",
  opts = function(_, opts)
    local status = require("astronvim.utils.status")
    opts.statusline = { -- statusline
      hl = { fg = colors.fg, bg = colors.bg },
      status.component.mode {
        mode_text = {
          padding = { left = 1, right = 1 }
        },
        hl = { fg = colors.fg, bg = colors.bg }
      }, -- add the mode text
      status.component.git_branch(),
      status.component.file_info { filetype = {}, filename = false, file_modified = false },
      status.component.git_diff(),
      status.component.diagnostics(),
      status.component.fill(),
      status.component.cmd_info(),
      status.component.fill(),
      status.component.lsp(),
      status.component.treesitter(),
      status.component.nav(),
    }

    return opts
  end
}
