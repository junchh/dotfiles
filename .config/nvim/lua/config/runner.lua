vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "IN",
	callback = function()
		vim.cmd([[%s/\r//ge]])
	end,
})

local function open_file_in_popup(filename)
	local buf = vim.fn.bufadd(filename)
	vim.fn.bufload(buf)

	local width = math.floor(vim.o.columns * 0.4)
	local height = math.floor(vim.o.lines * 0.4)
	local row = math.floor((vim.o.lines - height) / 2)
	local col = math.floor((vim.o.columns - width) / 2)

	local opts = {
		relative = "editor",
		row = row,
		col = col,
		width = width,
		height = height,
		style = "minimal",
		border = "rounded",
	}

	local win_id = vim.api.nvim_open_win(buf, true, opts)

	vim.keymap.set("n", "q", function()
		if vim.api.nvim_win_is_valid(win_id) then
			vim.api.nvim_win_close(win_id, true)
		end
	end, { buffer = buf, silent = true, desc = "Close popup window" })
end
vim.keymap.set("n", "<leader>r", function()
	if vim.bo.filetype == "cpp" then
		vim.cmd("! g++-15 -Wall -Wextra -Wconversion -O2 -std=c++23 " .. vim.api.nvim_buf_get_name(0) .. " -o main.out")
	elseif vim.bo.filetype == "zig" then
		vim.cmd("! zig build-exe " .. vim.api.nvim_buf_get_name(0) .. " -femit-bin=main.out")
	end
	vim.cmd("! sh /Users/junchh/Documents/Tech/problem-solving/online-judge/runner.sh")
	open_file_in_popup("/Users/junchh/Documents/Tech/problem-solving/online-judge/OUT")
end, { desc = "Run code" })

vim.keymap.set("n", "<leader>i", function()
	local original_win = vim.api.nvim_get_current_win()
	vim.cmd("80vsplit /Users/junchh/Documents/Tech/problem-solving/online-judge/IN")
	vim.api.nvim_set_current_win(original_win)
end, { desc = "Open Input" })
