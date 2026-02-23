{
  globals = {
    mapleader = " ";
  };

  colorschemes.catppuccin = {
    enable = true;
    settings = {
      flavour = "mocha";
      integrations = {
        cmp = true;
        gitsigns = true;
        nvimtree = true;
        treesitter = true;
      };
      styles = {
        booleans = [
          "bold"
          "italic"
        ];
        conditionals = [
          "bold"
        ];
      };
      term_colors = true;
    };
  };

  opts = {
    autoindent = true;
    expandtab = true;
    shiftwidth = 2;
    tabstop = 2;
    softtabstop = 2;
    ignorecase = true;
    smartcase = true;
    incsearch = true;
    number = true;
    relativenumber = true;
    termguicolors = true;
    listchars = "tab:>-,trail:*,nbsp:+";
    scrolloff = 15;
    splitbelow = true;
    splitright = true;
    hidden = true;
    helpheight = 9999;
    updatetime = 100;
    spell = true;
  };
}
