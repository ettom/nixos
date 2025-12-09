{ ... }:

{
  imports = [ ];

  fileSystems."/" = {
    device = "/dev/sda";
    fsType = "ext4";
  };
  boot.loader.systemd-boot.enable = true;

  nixpkgs.hostPlatform = {
    system = "x86_64-linux";
    gcc.arch = "x86-64-v4";
    gcc.tune = "generic";
  };

  system.stateVersion = "25.05";
}
