{
  plugins.lualine = {
    enable = true;
    settings = {
      options = {
        component_separators = {
          left = "";
          right = "";
        };
        icons_enabled = false;
        section_separators = {
          left = "";
          right = "";
        };
      };
    };
  };
  # Disable mode display since mode is already shown in Lualine
  opts = {
    showmode = false;
  };
}

