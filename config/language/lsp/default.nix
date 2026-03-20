{ pkgs, ... }:
{
  plugins.lsp = {
    enable = true;
    inlayHints = true;
    servers = import ./servers.nix { inherit pkgs; };
  };
}
