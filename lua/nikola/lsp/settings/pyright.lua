-- for python to see packages installed in venv
return {
  settings = {
    python = {
      pythonPath = '/home/nikola/.advanced-testing-techniques/bin/python',
      analysis = {
        extraPaths = {
          '/home/nikola/.advanced-testing-techniques/lib/python3.10/site-packages',
        },
      },
    },
  },
}
--[[ return { ]]
--[[     settings = { ]]
--[[         Python = { ]]
--[[             analysis = { ]]
--[[                 extraPaths = { ]]
--[[                     "/home/nikola/.advanced-testing-techniques/lib/python3.10/site-packages/", ]]
--[[                 }, ]]
--[[             }, ]]
--[[         }, ]]
--[[     }, ]]
--[[ } ]]
--[[]]
