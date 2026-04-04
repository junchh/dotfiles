--
--				||========================================||
--				||																				||
--				||			    Neovim Configuration   				||
--				||								  v1.0						  		||
--        ||                                        ||
--				||						 @author junchh             ||
--        ||                                        ||
--				||           Based on kickstart           ||
--				||       Heavily inspired by LazyVim			||
--        ||                                        ||
--        ||                                        ||
--				||========================================||
--

require("config.options")
require("config.keymaps")
require("config.utils")
require("config.lazy")
require("config.runner")

-- this is for rose pine only
-- vim.api.nvim_set_hl(0, "CursorLine", { bg = "#2b2842", fg = "NONE" })
