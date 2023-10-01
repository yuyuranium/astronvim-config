return function(client, bufnr)
  vim.keymap.set("n", "<leader>lj", function() vim.diagnostic.goto_next() end, { desc = "Next diagnostic" })
  vim.keymap.set("n", "<leader>lk", function() vim.diagnostic.goto_prev() end, { desc = "Previous diagnostic" })
end
