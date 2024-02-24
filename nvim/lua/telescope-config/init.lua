require('telescope').setup {
    defaults = {
      prompt_prefix = "❯ ",
      selection_caret = "❯ ",
      file_ignore_patterns = {
        "node_modules/.*",
        "yarn.lock",
        "package-lock.json",
        "lazy-lock.json",
        "target/.*",
        ".git/.*",
        "bootstrap/.*",
        "public/vendor/.*"
      }
    }
  }
