{
  imports = [
    ./options.nix
    ./keymaps.nix
    ./highlights.nix
    ./plugins
    ./ftplugin.nix
    ./language
  ];

  nixpkgs.config = {
    allowUnfree = true;
  };
}
