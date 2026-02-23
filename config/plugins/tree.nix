{
  plugins.nvim-tree = {
    enable = true;
    settings = {
      git = {
        enable = true;
        ignore = false;
      };
      diagnostics.enable = true;
      view.float.enable = true;
      update_focused_file.enable = true;
      renderer.indent_width = 1;
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<C-t>";
      action = "<cmd>lua require('nvim-tree.api').tree.toggle()<CR>";
      options.desc = "Toggle File Tree";
    }
  ];
}
