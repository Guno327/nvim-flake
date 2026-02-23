{pkgs, ...}: {
  plugins = {
    treesitter-context.enable = true;
    treesitter = {
      enable = true;
      nixvimInjections = true;

      grammarPackages = with pkgs;
        vimPlugins.nvim-treesitter.passthru.allGrammars;

      settings = {
        highlight.enable = true;
        illuminate.enable = true;
      };
    };
  };
}
