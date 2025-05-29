{
  plugins.lsp = {
    enable = true;
    inlayHints = false;

    keymaps = {
      diagnostic = {
        "<leader>j" = "goto_next";
        "<leader>k" = "goto_prev";
      };
      lspBuf = {
        "K" = "hover";
        "gd" = "definition";
        "gD" = "references";
        "gi" = "implementation";
        "gt" = "type_definition";
        "<M-CR>" = "code_action";
        "<leader>r" = "rename";
      };
    };

    servers = {
      nixd = {
        enable = true;
        settings.formatting.command = [ "nixpkgs-fmt" ];
      };
      clangd = {
        enable = true;
      };
      bashls.enable = true;
      rust_analyzer = {
        enable = true;
        # Use the more up-to-date versions in a devshell
        installRustc = false;
        installCargo = false;
      };
      ts_ls.enable = true;
      yamlls.enable = true;
    };
  };
}

