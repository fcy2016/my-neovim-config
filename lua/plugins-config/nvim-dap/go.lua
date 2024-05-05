-- -- require('dap-go').setup {
-- --     -- Additional dap configurations can be added.
-- --     -- dap_configurations accepts a list of tables where each entry
-- --     -- represents a dap configuration. For more details do:
-- --     -- :help dap-configuration
-- --     dap_configurations = {
-- --         {
-- --             -- Must be "go" or it will be ignored by the plugin
-- --             type = "go",
-- --             name = "Attach remote",
-- --             mode = "remote",
-- --             request = "attach",
-- --         },
-- --     },
-- --     -- delve configurations
-- --     delve = {
-- --         -- the path to the executable dlv which will be used for debugging.
-- --         -- by default, this is the "dlv" executable on your PATH.
-- --         path = "C:/Users/fcy23/go/bin/dlv.exe",
-- --         -- time to wait for delve to initialize the debug session.
-- --         -- default to 20 seconds
-- --         initialize_timeout_sec = 20,
-- --         -- a string that defines the port to start delve debugger.
-- --         -- default to string "${port}" which instructs nvim-dap
-- --         -- to start the process in a random available port
-- --         port = "${port}",
-- --         -- additional args to pass to dlv
-- --         args = {},
-- --         -- the build flags that are passed to delve.
-- --         -- defaults to empty string, but can be used to provide flags
-- --         -- such as "-tags=unit" to make sure the test suite is
-- --         -- compiled during debugging, for example.
-- --         -- passing build flags using args is ineffective, as those are
-- --         -- ignored by delve in dap mode.
-- --         build_flags = "",
-- --         -- whether the dlv process to be created detached or not. there is
-- --         -- an issue on Windows where this needs to be set to false
-- --         -- otherwise the dlv server creation will fail.
-- --         detached = true,
-- --         -- the current working directory to run dlv from, if other than
-- --         -- the current working directory.
-- --         cwd = nil,
-- --     },
-- -- }



-- local dap = require('dap')

-- dap.adapters.go = {
--     type = 'executable',
--     command = 'dlv',
--     args = { '--debug=:2345' }, -- 注意端口号
-- }


-- dap.adapters.delve = {
--     type = 'server',
--     port = '${port}',
--     executable = {
--         command = 'dlv',
--         args = { 'dap', '-l', '127.0.0.1:${port}' },
--         -- add this if on windows, otherwise server won't open successfully
--         -- detached = false
--     }
-- }

-- -- https://github.com/go-delve/delve/blob/master/Documentation/usage/dlv_dap.md
-- dap.configurations.go = {
--     {
--         type = 'go',
--         request = 'launch',
--         name = 'Launch',
--         program = 'main.go',
--         -- go = 'C:/Users/fcy23/go/bin/dlv.exe',
--     },
--     {
--         type = "delve",
--         name = "Debug",
--         request = "launch",
--         program = "${file}"
--     },
--     {
--         type = "delve",
--         name = "Debug test", -- configuration for debugging test files
--         request = "launch",
--         mode = "test",
--         program = "${file}"
--     },
--     -- works with go.mod packages and sub packages
--     {
--         type = "delve",
--         name = "Debug test (go.mod)",
--         request = "launch",
--         mode = "test",
--         program = "./${relativeFileDirname}"
--     }
-- }
local dap = require("dap")
dap.adapters.go = {
    type = 'executable',
    command = 'node',
    -- args = { os.getenv('HOME') .. '/dev/golang/vscode-go/dist/debugAdapter.js' },
    args = { "C:\\Users\\fcy23\\.vscode\\extensions\\golang.go-0.41.4\\dist\\debugAdapter.js" }
}
dap.configurations.go = {
    {
        type = 'go',
        name = 'Debug',
        request = 'launch',
        showLog = false,
        program = "${file}",
        dlvToolPath = vim.fn.exepath('dlv') -- Adjust to where delve is installed
    },
}
