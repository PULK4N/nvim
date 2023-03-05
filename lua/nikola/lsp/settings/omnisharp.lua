local pid = vim.fn.getpid()
local omnisharp_bin =
"/home/nikola/.local/omnisharp/run"

return {
  cmd = { omnisharp_bin },
}
