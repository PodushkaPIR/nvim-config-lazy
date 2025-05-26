-- Simple, minimal Lazy.nvim configuration
return {
  "huynle/ogpt.nvim",
    event = "VeryLazy",
    opts = {
      default_provider = "ollama",
      providers = {
        ollama = {
          api_host = os.getenv("OLLAMA_API_HOST") or "http://localhost:11434",
          api_key = os.getenv("OLLAMA_API_KEY") or "",
          model = "deepseek-r1:1.5b",
          api_params = {
            model = "deepseek-r1:1.5b",
            temperature = 0.8,
            top_p = 0.9,
          },
          api_chat_params = {
            model = "deepseek-r1:1.5b",
            frequency_penalty = 0,
            presence_penalty = 0,
            temperature = 0.5,
            top_p = 0.9,
          },

        }
      }
    },
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim"
    }
}

