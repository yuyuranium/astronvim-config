local colors = require "darkplus.palette"
return { -- this table overrides highlights in all themes
  NeoTreeGitAdded = { fg = colors.light_green },
  NeoTreeGitConflict = { fg = colors.warn },
  NeoTreeGitDeleted = { fg = colors.sign_delete },
  NeoTreeGitModified = { fg = colors.ui_orange }, -- unstaged
  NeoTreeGitStaged = { fg = colors.success_green },
  NeoTreeGitRenamed = { fg = colors.yellow },
  NeoTreeGitUntracked = { fg = colors.fg },
}
