local function new_file_with_name()
  local filename = vim.fn.input "Enter new file name: "
  if filename ~= "" then
    if vim.fn.filereadable(filename) == 1 then
      print "Error: File already exists."
    else
      vim.cmd("edit " .. filename)
    end
  else
    print "No file name was entered."
  end
end

return {
  "goolord/alpha-nvim",
  opts = function(_, opts)
    opts.section.header.val = {
      "           ▄ ▄                   ",
      "       ▄   ▄▄▄     ▄ ▄▄▄ ▄ ▄     ",
      "       █ ▄ █▄█ ▄▄▄ █ █▄█ █ █     ",
      "    ▄▄ █▄█▄▄▄█ █▄█▄█▄▄█▄▄█ █     ",
      "  ▄ █▄▄█ ▄ ▄▄ ▄█ ▄▄▄▄▄▄▄▄▄▄▄▄▄▄  ",
      "  █▄▄▄▄ ▄▄▄ █ ▄ ▄▄▄ ▄ ▄▄▄ ▄ ▄ █ ▄",
      "▄ █ █▄█ █▄█ █ █ █▄█ █ █▄█ ▄▄▄ █ █",
      "█▄█ ▄ █▄▄█▄▄█ █ ▄▄█ █ ▄ █ █▄█▄█ █",
      "    █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█ █▄█▄▄▄█    ",
    }

    opts.section.buttons.val = {
      opts.button("n", " New File", function() new_file_with_name() end),
      opts.button("f", " Find File", ":Telescope find_files<CR>"),
      opts.button("o", "󱋡 Old Files", ":Telescope oldfiles<CR>"),
      opts.button("g", " Live Grep", ":Telescope live_grep<CR>"),
      opts.button("l", "󰒲 Lazy ", ":Lazy<CR>"),
    }
  end,
}