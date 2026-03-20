{pkgs, ...}:
{
  nixd = {
    enable = true;
    settings.formatting.command = [ "${pkgs.nixfmt}/bin/nixfmt" ];
  };

  lua_ls = {
    enable = true;
    settings = {
      # telemetry.enable = false;
      # diagnostics.globals = [
      #   "vim" # neovim configuration
      #   "love" # love2d game engine
      #   "sol" # solarus game engine
      # ];
      #
      # workspace = {
      #   library = [
      #     "${pkgs.neovim}/share/nvim/runtime"
      #     "\${3rd}/love2d/library"
      #     "${solarus_lua_api}/work/EmmyLua/emmy_api"
      #   ];
      #   checkThirdParty = false;
      # };

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
