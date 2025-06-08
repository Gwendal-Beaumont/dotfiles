{ config, pkgs, ... }:

{
  home.username = "gwendalbeaumont";
  home.homeDirectory = "/home/gwendalbeaumont";

  home.packages = with pkgs [
    htop
    fortune
  ];

  home.stateVersion = "25.05";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  programs.gpg-agent = {
    enable = true;
    defaultCacheTtl = 1800;
    enableSshSupport = true;
  };

  programs.git = {
    enable = true;
    userName = "Gwendal Beaumont";
    userEmail = "gwendal.beaumont@gmail.com";
  };
}
