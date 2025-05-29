{

  imports = [
    ./options.nix
    ./plugins
  ];

  clipboard.providers.wl-copy.enable = true;

  viAlias = true;
  vimAlias = true;

}
