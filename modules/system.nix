{ config, pkgs, lib, ...}:

{
    imports = [
        ./users/ecorous.nix
        ../hardware-configuration.nix
    ];
    boot = {
        kernelParams = [ "loglevel=7" ];
        loader = {
            grub = {
                enable = true;
                version = 2;
                devices = [ "/dev/vda" ]; # change to nodev once running this on the real machine
                # also change these
                efiSupport = false;
                efiInstallAsRemovable = false;
            };
            timeout = 1;
        };
    };
    networking = {
        hostName = "ecorous-nixos";
        networkmanager.enable = true;
        firewall = {
            enable = false;
        };
        useDHCP = true;
        nameservers = ["1.1.1.1"];
    };

    time.timeZone = "Europe/London";
    i18n.defaultLocale = "en_GB.UTF-8";

    services.openssh.enable = true;

    sound.enable = true;
    hardware.pulseaudio.enable = true;

    environment.systemPackages = with pkgs; [
        wget
        neofetch
        zsh
        git
        btop
        kitty
        neovim
    ];

    nix.settings.experimental-features = [ "nix-command" "flakes" ];
    nixpkgs.config.allowUnfree = true;
    security.sudo.wheelNeedsPassword = false;
    security.polkit.enable = true;

    system.stateVersion = "22.11";
}