{ config, pkgs, inputs, unstable, ... }:

{
  home.username = "adxthya";
  home.homeDirectory = "/home/adxthya";

  home.stateVersion = "23.11"; # Please read the comment before changing.

  imports = [
    ../../modules
  ];

  home.packages = with pkgs;[
    stow
    obsidian
    vlc
    vscode-fhs
    protonvpn-gui
    telegram-desktop
    vesktop
    unstable.freetube
    python313
    chromium
    qbittorrent
    unstable.arduino-ide    
    btop
    appimage-run
    gnome-photos
    ghostty
    unstable.spotube
  ];
  services.mpris-proxy.enable = true;

  home.file = {
  };

  home.sessionVariables = {
  };

  programs.home-manager.enable = true;
}
