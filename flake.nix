{
  description = "Template for devenv flake with fix";

  outputs = { self, nixpkgs, pre-commit-hooks, nix, ... }@inputs:
    {
      templates.default = {
        path = ./templates/simple;
        description = "A direnv supported Nix flake with devenv integration.";
        welcomeText = ''
          # `.devenv` should be added to `.gitignore`
          ```sh
            echo .devenv >> .gitignore
          ```
        '';
      };
    };
}
