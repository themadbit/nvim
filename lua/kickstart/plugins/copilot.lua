return {
  {
    'CopilotC-Nvim/CopilotChat.nvim',
    branch = 'main',
    dependencies = {
      { 'zbirenbaum/copilot.lua' },
      { 'nvim-lua/plenary.nvim' },
    },
    opts = {
      debug = false,
      -- Your preferred mappings
      mappings = {
        complete = {
          detail = 'Use @<Tab> or /<Tab> for options.',
          insert = '<Tab>',
        },
        close = {
          normal = 'q',
          insert = '<C-c>',
        },
        reset = {
          normal = '<C-r>',
          insert = '<C-r>',
        },
        submit_prompt = {
          normal = '<CR>',
          insert = '<C-s>',
        },
      },
    },
    keys = {
      { '<leader>cc', ':CopilotChatToggle<CR>', desc = 'Toggle Copilot Chat' },
      { '<leader>ce', ':CopilotChatExplain<CR>', desc = 'Explain code' },
      { '<leader>ct', ':CopilotChatTests<CR>', desc = 'Generate tests' },
      { '<leader>cf', ':CopilotChatFix<CR>', desc = 'Fix code' },
      { '<leader>co', ':CopilotChatOptimize<CR>', desc = 'Optimize code' },
      { '<leader>cd', ':CopilotChatDocs<CR>', desc = 'Generate docs' },
    },
  },
}
