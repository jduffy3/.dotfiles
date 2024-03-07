vim.keymap.set(
	"n",
	"<leader><leader>s",
	":source ~/.config/nvim/after/plugin/luasnip.lua<CR>",
	{ desc = "[S]ource luasnips" }
)

local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
ls.add_snippets("all", {
	s("expand", { t("-- this is what was expanded!") }),
})

ls.add_snippets("lua", {
	s("tt", {
		t({ "local " }),
		i(1),
		t({ " = function(" }),
		i(2),
		t({ ")" }),
		t({ "", "  " }),
		i(0),
		t({ "", "end" }),
	}),
})

ls.add_snippets("ruby", {
	s("test", {
		t({ "test '" }),
		i(1),
		t({ "' do", "", "  " }),
		i(0),
		t({ "", "end" }),
	}),
})
