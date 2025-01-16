return {
  'marcelofern/vale.nvim',
  config = function()
      require("vale").setup{
        -- path to the vale binary.
        bin="/home/gylstorff/.nix-profile/bin/vale",
        -- path to your vale-specific configuration.
        vale_config_path="/home/gylstorff/.config/vale/.vale.ini",
      }
  end,
}
