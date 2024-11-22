vim.api.nvim_create_autocmd("VimEnter", {
	group = vim.api.nvim_create_augroup("riverpod_code_generator", { clear = true }),
	callback = function()
		vim.system({ "./.fvm/flutter_sdk/bin/dart", "run", "build_runner", "watch" }, { text = true }, function(out)
			if out.code ~= 0 then
				print("Error while starting code generator:")
				print(out.stdout)
			end
		end)
	end,
})

table.insert(require("nvim-tree").config.filters.custom, "**/*\\.g\\.dart")
table.insert(require("nvim-tree").config.filters.custom, "**/*\\.freezed\\.dart")
