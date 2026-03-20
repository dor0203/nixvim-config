{
  opts = {
    # show substitution preview
    inccommand = "split";

    # Do not save when switching buffers
    hidden = true;

    # Number of screen lines to keep above and below the cursor
    scrolloff = 8;

    winblend = 10;
    winborder = "rounded";

    # Better editor UI
    number = true;
    numberwidth = 1;
    relativenumber = true;

    # Better editing experience
    tabstop = 4;
    expandtab = true;
    autoindent = true;
    cindent = true;

    wrap = false;
    list = true;
    listchars = "trail:·,nbsp:◇,tab:→ ,extends:▸,precedes:◂";
    conceallevel = 2;
    foldlevel = 99999; # disable folding by default

    # Case insensitive searching UNLESS /C or capital in search
    ignorecase = true;
    smartcase = true;

    # Undo and backup options
    undofile = true;
    swapfile = false;
    backupdir = "/tmp/";
    directory = "/tmp/";
    undodir = "/tmp/";

    # Remember 100 items in commandline history
    history = 100;

    # Better buffer splitting
    splitright = true;
    splitbelow = true;

    # enable mouse support
    mouse = "a";

    # treesitter should define which parts should be spell checked
    spell = true;

    # bidirectional text
    termbidi = true;
  };
}
