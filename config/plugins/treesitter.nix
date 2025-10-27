{
  plugins = {
    treesitter = {
      enable = true;
      settings = {
        indent = {
          enable = true;
        };
      };
    };

    treesitter-refactor = {
      enable = true;
      settings = {
        highlight_definitions.enable = true;
      };
    };
  };
}
