local M = {}

-- This function is stolen from the premade configuration Its important to let the terminal plugin work
function M.get_hlgroup(name, fallback)
  if vim.fn.hlexists(name) == 1 then
    local hl = vim.api.nvim_get_hl_by_name(name, vim.o.termguicolors)
    if not hl["foreground"] then
      hl["foreground"] = "NONE"
    end
    if not hl["background"] then
      hl["background"] = "NONE"
    end
    hl.fg, hl.bg, hl.sp = hl.foreground, hl.background, hl.special
    hl.ctermfg, hl.ctermbg = hl.foreground, hl.background
    return hl
  end
  return fallback
end


return M
