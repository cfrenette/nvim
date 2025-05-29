{
  config = {
    opts = {

      # Line Numbers
      number = true;
      relativenumber = true;

      # Tabs
      tabstop = 4;
      shiftwidth = 4;
      expandtab = true;
      autoindent = true;

      # Search
      hlsearch = false;
      incsearch = true;

      # Display
      wrap = false;
      termguicolors = true;
      signcolumn = "yes";
      scrolloff = 5;
      cursorline = true;
      cursorlineopt = "number";
    };

    autoCmd = [
      # Exception for nix indentation
      {
        event = "FileType";
        pattern = "nix";
        command = "setlocal tabstop=2 shiftwidth=2 softtabstop=2";
      }
    ];
  };
}

