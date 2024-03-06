-- Only do this when not done yet for this buffer
if vim.fn.exists("b:did_ftplugin") == 0 then
	return
end
-- let b:did_ftplugin = 1
vim.b.did_ftplugin = 1
vim.keymap.set("n", "<leader>rt", ":!rails test %<CR>", { desc = "[R]un [T]estfile" }) -- run test file
vim.keymap.set("n", "<leader>tf", ":e %:r:s?app?test?_test.rb<CR>", { desc = "[T]est [F]ile" }) -- open test file
