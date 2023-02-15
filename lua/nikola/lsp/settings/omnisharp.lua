local pid = vim.fn.getpid()
local omnisharp_bin = "/home/nikola/.local/share/nvim/lsp_servers/omnisharp/omnisharp/OmniSharp.dll"

return {
  cmd = { omnisharp_bin, "--languageserver", "--hostPID", tostring(pid) },
  omnisharp = {
    useModernNet = false,
    monoPath = "/usr/bin/mono"
  }
}
