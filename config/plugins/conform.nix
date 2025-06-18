{
  plugins.conform-nvim = {
    enable = true;
    settings = {
      formatters_by_ft = {
        nix = [ "nixfmt" ];
        bash = [ "beautysh" ];
      };
      format_on_save = {
        lsp_format = "fallback";
        timeoutMs = 500;
      };
    };
  };
}
