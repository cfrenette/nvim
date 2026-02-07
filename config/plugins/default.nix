{ pkgs, ... }:
{
  imports = [
    ./cmp.nix
    ./conform.nix
    ./lsp.nix
    ./lualine.nix
    ./telescope.nix
    ./treesitter.nix
  ];

  # Use Sainnhe's gruvbox-material
  colorschemes.gruvbox-material = {
    enable = true;
    settings = {
      background = "hard";
      transparent_background = 1;
      foreground = "material";
      ui_contrast = "high";
      diagnostic_line_highlight = 1;
      diagnostic_virtual_text = "colored";
    };
  };
}
