{
  plugins = {
    luasnip.enable = true;
    lspkind.enable = true;
    lsp = {
      enable = true;

      servers = {
        arduino_language_server.enable = true;
        asm_lsp.enable = true;
        bashls.enable = true;
        clangd.enable = true;
        cmake.enable = true;
        csharp_ls.enable = true;
        cssls.enable = true;
        docker_compose_language_service.enable = true;
        fish_lsp.enable = true;
        eslint.enable = true;
        gopls.enable = true;
        helm_ls.enable = true;
        jsonls.enable = true;
        kotlin_language_server.enable = true;
        ltex.enable = true;
        marksman.enable = true;
        matlab_ls.enable = true;
        nil_ls.enable = true;
        pyright.enable = true;
        qmlls.enable = true;
        sqls.enable = true;
        stylua.enable = true;
        superhtml.enable = true;
        systemd_ls.enable = true;
        terraform_lsp.enable = true;
        yamlls.enable = true;

        rust_analyzer = {
          enable = true;
          installCargo = true;
          installRustc = true;
        };

        hls = {
          enable = true;
          installGhc = true;
        };
      };
    };
  };
}
