local opt = vim.opt

-- line numbers
opt.relativenumber = true
opt.number = true

-- popup
opt.winborder = "rounded"

-- tabs & spaces
opt.expandtab = true
opt.autoindent = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4

-- line wrapping
opt.wrap = false
opt.smartindent = true

-- search settings
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true

-- cursor line
opt.cursorline = true

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")
opt.iskeyword:append("-")

-- folding
opt.foldenable = true
opt.foldlevelstart = 99

-- completion
-- opt.signcolumn = "yes:1"
-- opt.completeopt = "fuzzy,menu,menuone,preview,noinsert"
-- opt.wildoptions:append { 'fuzzy' }
-- opt.complete = "t"

-- other
opt.confirm = true
opt.swapfile = false
opt.backup = false
opt.smoothscroll = true

