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
  extraPlugins = with pkgs; [ vimPlugins.gruvbox-material ];
  extraConfigLua = ''
    vim.g.gruvbox_material_background = 'hard';
    vim.g.gruvbox_material_transparent_background = 1;
    vim.g.gruvbox_material_foreground = 'material';
    vim.g.gruvbox_material_ui_contrast = 'high';
    vim.g.gruvbox_material_diagnostic_line_highlight = 1;
    vim.g.gruvbox_material_diagnostic_virtual_text = 'colored';
    vim.cmd.colorscheme('gruvbox-material')
  '';
}

