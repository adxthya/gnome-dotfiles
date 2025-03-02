{ pkgs, ... }:{

  programs.bash = {
    enable = true;
    shellAliases = {
      c = "clear";
      config = "sudo nano ~/gnome-dotfiles/host/configuration.nix";
      build = "nh os switch ~/gnome-dotfiles";
      home = "nano ~/gnome-dotfiles/users/adxthya/home.nix";
      home-build = "nh home switch ~/gnome-dotfiles";
      ns = "nix-shell -p";
    };
  };

}
