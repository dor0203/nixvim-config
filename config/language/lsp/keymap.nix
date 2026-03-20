{keymap, config, ...}:
let telescope_commands = (
    if config.plugins.telescope.enable then
      {
        workspace_symbols = "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>";
        document_symbols = "<cmd>Telescope lsp_document_symbols<cr>";
        type_definitions = "<cmd>Telescope lsp_type_definitions<cr>";
        references = "<cmd>Telescope lsp_references<cr>";
        implementations = "<cmd>Telescope lsp_implementations<cr>";
        incoming_calls = "<cmd>Telescope lsp_incoming_calls<cr>";
        outgoing_calls = "<cmd>Telescope lsp_outgoing_calls<cr>";
        definitions = "<cmd>Telescope lsp_definitions<cr>";
        declarations = "<cmd>Telescope lsp_declarations<cr>";
        diagnostics = "<cmd>Telescope diagnostics<cr>";
      }
    else
      {
        workspace_symbols = "<cmd>lua vim.lsp.buf.workspace_symbol()<cr>";
        document_symbols = "<cmd>lua vim.lsp.buf.document_symbol()<cr>";
        type_definitions = "<cmd>lua vim.lsp.buf.type_definition()<cr>";
        references = "<cmd>lua vim.lsp.buf.references()<cr>";
        implementations = "<cmd>lua vim.lsp.buf.implementation()<cr>";
        incoming_calls = "<cmd>lua vim.lsp.buf.incoming_calls()<cr>";
        outgoing_calls = "<cmd>lua vim.lsp.buf.outgoing_calls()<cr>";
        definitions = "<cmd>lua vim.lsp.buf.definition()<cr>";
        declarations = "<cmd>lua vim.lsp.buf.declaration()<cr>";
        diagnostics = "<cmd>lua vim.diagnostic.setqflist()<cr>";
      }
  );
in [
    # defined outside of lsp for whichkey
    (keymap "n" "<leader>la" "<cmd>lua vim.lsp.buf.code_action()<cr>" { silent = true; })
    (keymap "n" "<leader>lf" "<cmd>lua vim.lsp.buf.format()<cr>" { silent = true; })
    (keymap "n" "<leader>ln" "<cmd>lua vim.lsp.buf.rename()<cr>" { silent = true; })
    (keymap "n" "<leader>lh" "<cmd>lua vim.lsp.buf.signature_help()<cr>" { silent = true; })
    (keymap "n" "<leader>lc" "<cmd>lua vim.lsp.buf.typehierarchy()<cr>" { silent = true; })
    (keymap "n" "<leader>ll"
      "<cmd>lua vim.diagnostic.config({virtual_lines = not vim.diagnostic.config().virtual_lines, virtual_text = not vim.diagnostic.config().virtual_text})<cr>"
      {
        silent = true;
      }
    )
    (keymap "n" "<leader>ld" telescope_commands.diagnostics { silent = true; })
    (keymap "n" "<leader>lm" telescope_commands.implementations { silent = true; })
    (keymap "n" "<leader>li" telescope_commands.incoming_calls { silent = true; })
    (keymap "n" "<leader>lo" telescope_commands.outgoing_calls { silent = true; })
    (keymap "n" "<leader>lr" telescope_commands.references { silent = true; })
    (keymap "n" "<leader>lt" telescope_commands.type_definitions { silent = true; })
    (keymap "n" "<leader>ls" telescope_commands.workspace_symbols { silent = true; })
    (keymap "n" "<leader>lO" telescope_commands.document_symbols { silent = true; })
    (keymap "n" "gD" telescope_commands.declarations { silent = true; })
    (keymap "n" "gd" telescope_commands.definitions { silent = true; })
    (keymap "n" "]d" "<cmd>lua vim.diagnostic.goto_next()<cr>" { silent = true; })
    (keymap "n" "[d" "<cmd>lua vim.diagnostic.goto_prev()<cr>" { silent = true; })
    (keymap "n" "<M-d>" "<cmd>lua vim.diagnostic.open_float()<cr>" { silent = true; })
]
