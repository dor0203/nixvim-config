{ keymap, ... }:
let
  keymapsList = import ./keymap.nix { inherit keymap; };

  filterMode = mode:
    builtins.filter (k: k.mode == mode) keymapsList;

  toCmpMapping = list:
    builtins.listToAttrs (map (k: {
      name = k.key;
      value = k.action;
    }) list);

  toCmdlineLua = list:
    let
      entries = map (k:
        ''["${k.key}"] = ${k.action}''
      ) list;
    in
      ''
        cmp.mapping.preset.cmdline({
          ${builtins.concatStringsSep ",\n" entries}
        })
      '';

  mkCmdline = sources: {
    mapping.__raw = toCmdlineLua (filterMode "c");
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
      mapping = toCmpMapping (filterMode "i");
      sources = sources.insert;

      experimental.ghost_text = true;
      window.completion.winhighlight = "Normal:CmpNormal";
    };
  };

  extraConfigLua = ''
    vim.api.nvim_set_hl(0, "CmpItemAbbr", { link = "Normal" })
  '';
}
