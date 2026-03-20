{pkgs, ...}:
{
  nixd = {
    enable = true;
    settings.formatting.command = [ "${pkgs.nixfmt}/bin/nixfmt" ];
  };

  lua_ls = {
    enable = true;
    settings = {
      telemetry.enable = false;
      diagnostics.globals = [
        "vim" # neovim configuration
      ];

      workspace = {
        library = [
          "${pkgs.neovim}/share/nvim/runtime"
        ];
        checkThirdParty = false;
      };

      Lua = {
        hint = {
          enable = true;
          arrayIndex = "Enable";
          setType = true;
          paramName = "All";
          paramType = true;
        };
      };
    };
  };
}
