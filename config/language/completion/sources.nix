{
  insert = [
    { name = "calc"; }
    { name = "nvim_lsp"; }
    { name = "buffer"; }
    {
      name = "buffer";
      option.get_bufnrs.__raw = "vim.api.nvim_list_bufs";
    }
    { name = "path"; }
  ];

  cmdline = {
    search = [
      { name = "buffer"; }
    ];

    command = [
      { name = "path"; }
      { name = "cmdline"; }
    ];
  };

  filetype = {
    sql = {
      name = "vim-dadbod-completion";
    };
  };
}
