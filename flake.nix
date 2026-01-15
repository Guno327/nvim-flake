{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nvf.url = "github:notashelf/nvf";
  };

  outputs = {nixpkgs, ...} @ inputs: {
    packages.x86_64-linux = {
      # Set the default package to the wrapped instance of Neovim.
      # This will allow running your Neovim configuration with
      # `nix run` and in addition, sharing your configuration with
      # other users in case your repository is public.
      default =
        (inputs.nvf.lib.neovimConfiguration {
          pkgs = nixpkgs.legacyPackages.x86_64-linux;
          modules = [
            {
              config.vim = {
                theme = {
                  enable = true;
                  name = "catppuccin";
                  style = "mocha";
                };
                autopairs.nvim-autopairs.enable = true;

                options = {
                  tabstop = 2;
                  shiftwidth = 2;
                  backup = false;
                };

                spellcheck = {
                  enable = true;
                  languages = ["en"];
                  programmingWordlist.enable = true;
                };

                diagnostics = {
                  enable = true;
                  config.virtual_lines = true;
                };

                utility = {
                  images.image-nvim = {
                    enable = true;
                    setupOpts = {
                      backend = "kitty";
                      integrations.markdown = {
                        enable = true;
                        downloadRemoteImages = true;
                        onlyRenderAtCursor = true;
                      };
                    };
                  };
                  preview.markdownPreview = {
                    enable = true;
                    customPort = "1111";
                  };
                };

                lsp = {
                  enable = true;
                  formatOnSave = true;
                };

                treesitter = {
                  enable = true;
                  addDefaultGrammars = true;
                  autotagHtml = true;
                  context.enable = true;
                  indent = {
                    enable = true;
                  };
                  highlight = {
                    enable = true;
                  };
                };

                visuals = {
                  cinnamon-nvim.enable = true;
                  indent-blankline.enable = true;
                  nvim-cursorline.enable = true;
                  fidget-nvim.enable = true;
                };

                languages = {
                  enableDAP = true;
                  enableExtraDiagnostics = true;
                  enableFormat = true;
                  enableTreesitter = true;

                  nix.enable = true;
                  csharp.enable = true;
                  bash.enable = true;
                  java.enable = true;
                  html.enable = true;
                  css.enable = true;
                  rust.enable = true;
                  markdown.enable = true;
                  clang.enable = true;
                  go.enable = true;
                  ts.enable = true;
                  python = {
                    enable = true;
                    lsp.servers = ["pyright"];
                  };
                };

                autocomplete.blink-cmp = {
                  enable = true;
                  friendly-snippets.enable = true;
                };
              };
            }
          ];
        })
        .neovim;
    };
  };
}
