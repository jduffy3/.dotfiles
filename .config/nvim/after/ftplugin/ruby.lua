-- Only do this when not done yet for this buffer
if vim.fn.exists("b:did_ftplugin") == 0 then
	return
end
-- let b:did_ftplugin = 1
vim.b.did_ftplugin = 1

vim.keymap.set("n", "<leader>rct", function()
	local current_line_number = vim.fn.line(".")
	vim.api.nvim_command(":!rails test %" .. ":" .. current_line_number)
end, { desc = "[R]un [C]urrent [T]est" })
vim.keymap.set("n", "<leader>nt", function()
	vim.api.nvim_command(":/test ")
end, { desc = "[N]ext [T]est" })

vim.keymap.set("n", "<leader>tf", ":e %:r:s?app?test?_test.rb<CR>", { desc = "Open [T]est [F]ile" })
vim.keymap.set(
	"n",
	"<leader>stf",
	":vsplit %:r:s?app?test?_test.rb<CR>",
	{ desc = "Open Vertical [S]plit [T]est [F]ile" }
)

-- run test from main file or test file
vim.keymap.set("n", "<leader>rt", function()
	local test_file_name = string.gsub(vim.fn.expand("%"), "^app/", "test/")
	if test_file_name:sub(-#"_test.rb") == "_test.rb" then
		vim.api.nvim_command(":! rails test " .. test_file_name)
	else
		test_file_name = string.gsub(test_file_name, "%.rb", "_test.rb")
		vim.api.nvim_command(":! rails test " .. test_file_name)
	end
end, { desc = "[R]un [T]estfile" })
