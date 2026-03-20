{
  imports = [
    ./options.nix
    ./keymaps.nix
    ./highlights.nix
    ./plugins
    ./ftplugin.nix
    ./language
  ];
 
  _module.args = {
    keymap = (import ./keymap.nix).map;
  };

  nixpkgs.config = {
    allowUnfree = true;
  };
}
