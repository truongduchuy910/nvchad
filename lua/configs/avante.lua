local options = {
  provider = "copilot", -- Recommend using Claude
  auto_suggestions_provider = "copilot", -- Since auto-suggestions are a high-frequency operation and therefore expensive, it is recommended to specify an inexpensive provider or even a free provider: copilot
}

require("avante").setup(options)
