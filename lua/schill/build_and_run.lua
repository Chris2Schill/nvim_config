--if isexecutable('/usr/bin/bash')
    --vim.opt.shell="bash"
    vim.opt.shell = vim.fn.exepath("bash")
    vim.opt.shellcmdflag="-c"
    vim.opt.shellredir=">%s 2>&1"
    vim.opt.shellquote="shellxescape="
    vim.opt.shellxquote=""
    vim.opt.shellpipe="2>&1| tee"
--endif
TMP="/tmp"

--vim.keymap.set("n", "<F5>", ':Dispatch "cmake --build -j10 --preset win32-gcc-x64-mingw-debug"<cr>')

vim.keymap.set("n", "<leader>br", ":ToggleTerm<cr>" )
-- vim.keymap.set("n", "<leader>c", ':1TermExec cmd="cmake --preset win32-gcc-x64-mingw-debug-with-unit-testing"<cr>')
-- vim.keymap.set("n", "<leader>m", ':1TermExec cmd="cmake --build -j10 --preset win32-gcc-x64-mingw-debug-with-unit-testing"<cr>')
-- vim.keymap.set("n", "<leader>rt", ':1TermExec cmd="pushd build/win32-gcc-x64-mingw-debug-with-unit-testing && ctest ; popd"<cr>')
vim.keymap.set("n", "<leader>c", ':1TermExec cmd="cmake --preset win32-gcc-x64-mingw-debug"<cr>')
vim.keymap.set("n", "<leader>m", ':1TermExec cmd="cmake --build -j10 --preset win32-gcc-x64-mingw-debug"<cr>')

-- vim.keymap.set("n", "<leader>c", ':1TermExec cmd="cmake --preset win32-gcc-x64-mingw-debug-with-unit-testing"<cr>')
-- vim.keymap.set("n", "<leader>m", ':1TermExec cmd="cmake --build -j10 --preset win32-gcc-x64-mingw-debug-with-unit-testing"<cr>')
-- vim.keymap.set("n", "<leader>rt", ':1TermExec cmd="pushd build/win32-gcc-x64-mingw-debug-with-unit-testing && ctest ; popd"<cr>')

-- vim.keymap.set("n", "<leader>m", ':1TermExec cmd="go build && ./learngo"<cr>')
--vim.keymap.set("n", "<leader>r", ':TermExec cmd="pushd ./build/win32-gcc-x64-mingw-debug/imguiapp/ && ./imguiapp.exe && popd"<cr>')
--
