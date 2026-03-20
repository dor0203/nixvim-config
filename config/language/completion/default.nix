let
  keymaps = import ./keymap.nix;

  mkCmdline = sources: {
    mapping.__raw = keymaps.cmdline;
    inherit sources;
  };

  sources = import ./sources.nix;
in
{
  opts.completeopt = [ "menu" "menuone" "noselect" ];

  plugins.cmp = {
    enable = true;
    autoEnableSources = true;
    cmdline = {
      "/" = mkCmdline sources.cmdline.search;
      "?" = mkCmdline sources.cmdline.search;
      ":" = mkCmdline sources.cmdline.command;
    };

    filetype = sources.filetype;
    settings = {
      mapping = keymaps.insert;
      sources = sources.insert;
      experimental.ghost_text = true; #move to visual
      window.completion.winhighlight = "Normal:CmpNormal"; #move to visual
    };
  };

  extraConfigLua = ''
    vim.api.nvim_set_hl(0, "CmpItemAbbr", { link = "Normal" })
  ''; #move to visual
}
