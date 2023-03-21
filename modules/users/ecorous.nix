{config, pkgs, home-manager, ...}:

{
    users.users.ecorous = {
        isNormalUser = true;
        extraGroups = [ "wheel" ];
        packages = with pkgs; [];
        initialPassword = "ecorous.system";
        openssh.authorizedKeys.keys = [
            "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCqBQLLXMRRce/jXq6wKzxVOZd7yN6S7MHRcAhSDYUFNpJvvhTiHr8IW6c/DXURvEGUZETjxdo0cNjw7T5KjuokPUZMHZO/ehJHzoyx5B6TRvOWHRI/ZRrrkk+V/04eLRbfnu1+xPy8qmPyhH6SPu+1nZ/x97IpLzlNHLRnclkBL47WaVqkcgCtuU/kZbmO4z3VF+PJeYHx+xWQeCnzGI5naagN+7paRSMFrOdmvSt37JbaM9nN6v95s3jGQcfiAw1OXNGLlDRtjhjmF9vFCm79rAbz3tmuioFlPGjZvps1FJsMCSst020decQOW+stOOZbbzxZqhFfREz4ljxiWQ0sn0f2Z6GfGYvFGDWAoEl5DubGqlciELAnG9Qo1L9VNn23Uox1q+/4Ao/Pt6h5eGn/Of11QKcfqFTcmkcc4QuxU3gIG0jyezC19Xj+oW/HsytTrlPinGJHEPaBm2ES42VOVX7Vb0aNqV1Grd2xRsRdA+oEQ8Nk20k5YDqqMnXmQ5c= ecorous@ecorous-arch"
        ];
    };

    home-manager.users.ecorous = {
        imports = [
            ../hyprland.nix
        ];
        programs.git = {
            enable = true;
            userName = "Ecorous";
            userEmail = "ecorous@frogastudios.com";
        };
        programs.hyprland = {
            enable = true;
            
        };
    };
}