vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "gitcommit", "markdown" },
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.spell = true
  end,
})

vim.api.nvim_create_autocmd({ "FileType", "BufEnter" }, {
  pattern = { "c", "cpp" },
  callback = function()
    vim.opt_local.textwidth = 80
    vim.opt_local.colorcolumn = { 80 }
    vim.opt_local.shiftwidth = 4
    vim.opt_local.tabstop = 4
  end,
})

vim.api.nvim_create_autocmd({ "FileType", "BufEnter" }, {
  pattern = { "bsv", "verilog", "systemverilog" },
  callback = function()
    vim.opt_local.textwidth = 100
    vim.opt_local.colorcolumn = { 100 }
    vim.opt_local.shiftwidth = 2
    vim.opt_local.tabstop = 2
  end,
})

vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "gitcommit" },
  callback = function()
    vim.opt.colorcolumn = { 72 }
  end,
})

vim.api.nvim_create_autocmd({ "FileType" }, {
  callback = function()
    vim.opt_local.formatoptions = vim.opt_local.formatoptions - 'r' - 'o'
  end,
})
