local lsp = require("lsp-zero").preset({
	manage_nvim_cmp = {
		set_sources = "recommended",
	},
})

lsp.on_attach(function(client, bufnr)
	lsp.default_keymaps({ buffer = bufnr })

	-- show diagnostics on hover
	vim.api.nvim_create_autocmd("CursorHold", {
		buffer = bufnr,
		callback = function()
			local opts = {
				focusable = false,
				close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
				border = "rounded",
				source = "always",
				prefix = " ",
				scope = "cursor",
			}
			vim.diagnostic.open_float(nil, opts)
		end,
	})
end)

-- show variable info
vim.keymap.set("n", "<leader>d", vim.lsp.buf.hover, {})

-- no sign icons
lsp.set_sign_icons({})

-- disable tsserver formatting
require("lspconfig").tsserver.setup({
	on_init = function(client)
		client.server_capabilities.documentFormattingProvider = false
		client.server_capabilities.documentFormattingRangeProvider = false
	end,

	-- for import module alias completion
	init_options = {
		preferences = {
			importModuleSpecifierPreference = "relative",
		},
	},
})

require("lspconfig").lua_ls.setup({
	-- disable lua_ls formatting
	on_init = function(client)
		client.server_capabilities.documentFormattingProvider = false
		client.server_capabilities.documentFormattingRangeProvider = false
	end,

	-- set 'vim' as global for lua
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
		},
	},
})

lsp.setup()

-- cmp config
local cmp = require("cmp")
local cmp_action = require("lsp-zero").cmp_action()

cmp.setup({
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},
	mapping = {
		["<Tab>"] = cmp_action.luasnip_supertab(),
		["<S-Tab>"] = cmp_action.luasnip_shift_supertab(),
		["<CR>"] = cmp.mapping.confirm({ select = false }),
	},
})
