--
-- Install plugin manager, packer.nvim
--
local pack_path = vim.fn.stdpath("data") .. "/site/pack"

-- ensure a given plugin from github.com/<user>/<repo> is cloned in the pack/packer/start directory
local function ensure (user, repo)
  local install_path = string.format("%s/packer/start/%s", pack_path, repo)
  if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    vim.api.nvim_command(string.format("!git clone https://github.com/%s/%s %s", user, repo, install_path))
    vim.api.nvim_command(string.format("packadd %s", repo))
  end
end

-- ensure the plugin manager is installed
ensure("wbthomason", "packer.nvim")
