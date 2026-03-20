{
  insert = {
   "<C-c>" = "cmp.mapping.complete()";
   "<C-y>" = "cmp.mapping.confirm({ select = true })";
   "<C-n>" = "cmp.mapping.select_next_item()";
   "<C-p>" = "cmp.mapping.select_prev_item()";
   "<C-f>" = "cmp.mapping.scroll_docs(4)";
   "<C-b>" = "cmp.mapping.scroll_docs(-4)";
  };
  
  cmdline = ''
    cmp.mapping.preset.cmdline({
      ["<C-y>"] = cmp.mapping.confirm({ select = true }),
    })
  '';
}
