vim.api.nvim_create_autocmd("BufWritePost", {
	group = vim.api.nvim_create_augroup("riverpod_code_generator", { clear = true }),
	callback = function()
		vim.system({ "./.fvm/flutter_sdk/bin/dart", "run", "build_runner", "build" }, { text = true }, function(out)
			if out.code ~= 0 then
				print("Error while running Riverpod code generator:")
				print(out.stdout)
			else
				print("Riverpod code generator completed")
			end
		end)
	end,
})

table.insert(require("nvim-tree").config.filters.custom, "**/*\\.g\\.dart")
