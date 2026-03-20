{ pkgs, config, keymap, ... }:
{
  keymaps = import ./keymap.nix {inherit config keymap;};

  diagnostic.settings = {
    signs = false;
    underline = true;
    virtual_text = true;
    severity_sort = true;
    update_in_insert = true;
  };

  plugins.lsp = {
    enable = true;
    inlayHints = true;
    servers = import ./servers.nix { inherit pkgs; };
  };
}
