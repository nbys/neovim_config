local dap, dapui = require("dap"), require("dapui")
local ui_config = {
  icons = { expanded = "\u{1F843}", collapsed = "\u{1F842}", current_frame = "\u{2192}" },
  controls = {
    icons = {
      pause = "\u{23F8}",
      play = "\u{23F5}",
      step_into = "\u{21B4}",
      step_over = "\u{21B7}",
      step_out = "\u{21E1}",
      step_back = "\u{21B6}",
      run_last = "\u{1F5D8}",
      terminate = "\u{1F671}",
      disconnect = "\u{23FB}"
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
