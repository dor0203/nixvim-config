{
  # set gui colors for terminal
  opts.termguicolors = true;

  colorschemes.base16 = {
    enable = true;
    colorscheme = {
      base00 = "#000000";
      base01 = "#192225";
      base02 = "#4f646b";
      base03 = "#8cb0bb";
      base04 = "#b9deea";
      base05 = "#d0e9f1";
      base06 = "#e8f4f8";
      base07 = "#ffffff";
      base08 = "#f19087";
      base09 = "#f1e2bc";
      base0A = "#cef8a3";
      base0B = "#73ffa9";
      base0C = "#7bf4ff";
      base0D = "#539dff";
      base0E = "#df95ff";
      base0F = "#e7cf92";
    };
    settings = {
      telescope = true;
      telescope_borders = true;
      cmp = true;
      dapui = true;
      indentblankline = true;
    };
  };
  autoCmd = [
    {
      event = "TextYankPost";
      command = # lua
        ''
          lua vim.highlight.on_yank({ higroup = "Visual", timeout = 120 })
        '';
    }
  ];
}
