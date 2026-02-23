{
  lib,
  pkgs,
  ...
}: {
  plugins.conform-nvim = {
    enable = true;
    settings = {
      format_on_save = {
        timeout_ms = 500;
        lsp_format = "fallback";
      };

      formatters_by_ft = {
        nix = ["nixfmt"];
      };

      log_level = "warn";
      notify_on_error = false;
      notify_no_formatters = true;
      formatters = {
        nixfmt = {
          command = lib.getExe pkgs.nixfmt;
        };
      };
    };
  };
}
