local dap, dapui = require("dap"), require("dapui")
local ui_config = {
  icons = { expanded = "\u{1F843}", collapsed = "\u{1F842}", current_frame = "\u{2192}" },
  controls = {
    icons = {
      pause = "\u{270F}\u{FE0F}",
      play = "\u{25B6}\u{FE0F}",
      step_into = "\u{23EC}\u{FE0F}",
      step_over = "\u{23E9}\u{FE0F}",
      step_out = "\u{23EB}\u{FE0F}",
      step_back = "\u{1F53C}\u{FE0F}",
      run_last = "\u{23ED}\u{FE0F}",
      terminate = "\u{1F6D1}\u{FE0F}",
      disconnect = "\u{26A1}\u{FE0F}",
    }
  }
}

dap.listeners.before.attach.dapui_config = function()
  dapui.open()
end
dap.listeners.before.launch.dapui_config = function()
  dapui.open()
end
dap.listeners.before.event_terminated.dapui_config = function()
  dapui.close()
end
dap.listeners.before.event_exited.dapui_config = function()
  dapui.close()
end
dapui.setup(ui_config)
