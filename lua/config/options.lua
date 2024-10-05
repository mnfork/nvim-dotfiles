local opt = vim.opt -- just making a shorter alias for the api

-- Tabs and Spaces
opt.expandtab = true -- Use spaces instead of tabs
opt.tabstop = 2 -- Number of spaces to use for a tab
opt.softtabstop = 2 -- Number of spaces that a tab counts for during editing

-- UI Config
vim.wo.number = true
vim.wo.relativenumber = true
-- Note: there is also an autocmd to toggle line numbers, so this is just a baseline
opt.cursorline = true -- Highlight the cursor line
opt.showcmd = true -- Ensure that commands are shown in the last line of the screen
opt.showmatch = true -- Briefly jump to a matching enclosure when one is inserted
opt.showmode = false -- Don't show mode because we have a status bar instead

-- Management of Line Display
opt.linebreak = true -- Automatically insert linebreaks without actually inserting newlines into the file
opt.wrap = true -- Ensure that lines can be wrapped

-- General Behaviors
opt.wildmenu = true -- Ensure that the command line works with wildcards
opt.confirm = true -- Confirm to save changes before exiting modified buffers
opt.undolevels = 1000
opt.smartindent = true -- Insert indents automatically

-- Search Behaviors
opt.incsearch = true -- Ensure that search proceeds while typing
opt.hlsearch = true -- Ensure that matches are highlighted

-- Spitting Behaviors
opt.splitbelow = true -- Put new windows below the current one
opt.splitright = true -- Put new windows right of the current one
