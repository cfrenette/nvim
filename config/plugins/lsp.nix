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
        settings.formatting.command = [ "nixfmt" ];
      };
      bashls.enable = true;
    };

    postConfig = ''
        vim.api.nvim_create_user_command("LspLogClear", function()
      	  local lsplogpath = vim.fn.stdpath("state") .. "/lsp.log"
      	  print(lsplogpath)
      	  if io.close(io.open(lsplogpath, "w+b")) == false then vim.notify("Clearing LSP Log failed", vim.log.levels.WARN) end
        end, { nargs = 0 })
    '';
  };
}
