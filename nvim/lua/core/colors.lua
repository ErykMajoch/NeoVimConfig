local status_ok, color_scheme = pcall(require, 'pywal')
if not status_ok then
  return
end

local pywal = require("pywal")
pywal.setup()