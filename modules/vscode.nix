{ pkgs, ... }:
{
  environment.systemPackages = [ pkgs.wget ];
  nixpkgs.hostPlatform = "x86_64-linux"; # ## Set to "aarch64-linux" if on an ARM Device
  programs.nix-ld = {
    enable = true;
    package = pkgs.nix-ld-rs;
  };
  wsl = {
    enable = true;
    defaultUser = "nixos";
  };
}
