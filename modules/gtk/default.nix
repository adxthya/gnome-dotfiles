{ pkgs, ... }: {

  gtk = {
    enable = true;    
    # gtk icon theme
    iconTheme.package = pkgs.adwaita-icon-theme;
    iconTheme.name = "Adwaita";
    # gtk cursor theme
    cursorTheme.package = pkgs.rose-pine-cursor;
    cursorTheme.name = "BreezeX-RosePineDawn-Linux";
    cursorTheme.size = 30;
  };
  # setting home cursor
  home.pointerCursor.package = pkgs.rose-pine-cursor;
  home.pointerCursor.name = "BreezeX-RosePineDawn-Linux";
  home.pointerCursor.size = 24;
  # configure dconf to prefer dark-theme
  dconf.settings = {
    "org/gnome/desktop/interface" = {
       color-scheme = "prefer-dark";
     };
  };
}
