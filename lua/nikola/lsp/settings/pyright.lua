-- for python to see packages installed in venv
return {
  settings = {
    python = {
      pythonPath = vim.env.HOME .. '/.flask-ml-azure/bin/python',
      analysis = {
        extraPaths = {
          vim.env.HOME .. '/.flask-ml-azure/lib/python3.10/site-packages',
        },
      },
    },
  },
}
--[[ return { ]]
--[[   settings = { ]]
--[[     python = { ]]
--[[       pythonPath = vim.env.HOME .. '/.flask-ml-azure/bin/python', ]]
--[[       analysis = { ]]
--[[         extraPaths = { ]]
--[[           vim.env.HOME .. '/.flask-ml-azure/lib/python3.10/site-packages', ]]
--[[         }, ]]
--[[       }, ]]
--[[     }, ]]
--[[   }, ]]
--[[ } ]]
