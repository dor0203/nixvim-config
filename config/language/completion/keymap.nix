{keymap, ...}:
[
  # insert
  (keymap "i" "<C-n>" "cmp.mapping.select_next_item()" {})
  (keymap "i" "<C-p>" "cmp.mapping.select_prev_item()" {})
  (keymap "i" "<C-y>" "cmp.mapping.confirm({ select = true })" {})
  (keymap "i" "<C-c>" "cmp.mapping.complete()" {})
  (keymap "i" "<C-f>" "cmp.mapping.scroll_docs(4)" {})
  (keymap "i" "<C-b>" "cmp.mapping.scroll_docs(-4)" {})

  # cmdline
  (keymap "c" "<C-y>" "cmp.mapping.confirm({ select = true })" {})
]
