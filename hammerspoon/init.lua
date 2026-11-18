-- local hidden = {}
-- 
-- hs.hotkey.bind({"alt"}, "d", function()
--   if #hidden > 0 then
--     for i = #hidden, 1, -1 do
--       local w = hidden[i]
--       if w:isMinimized() then w:unminimize() end
--     end
--     hidden = {}
--   else
--     for _, w in ipairs(hs.window.orderedWindows()) do
--       if w:isStandard() and not w:isFullScreen() then
--         table.insert(hidden, w)
--         w:minimize()
--       end
--     end
--   end
-- end)
--
local hidden = {}

hs.hotkey.bind({"alt"}, "d", function()
  local front = hs.application.frontmostApplication()
  local seen, apps = {}, {}

  for _, w in ipairs(hs.window.orderedWindows()) do
    local app = w:application()
    if w:isStandard() and not w:isFullScreen() and app and not seen[app:pid()] then
      seen[app:pid()] = true
      table.insert(apps, app)
    end
  end

  if #apps == 0 then
    for i = #hidden, 1, -1 do
      hidden[i]:unhide()
    end
    hidden = {}
    return
  end

  local function track(app)
    for _, a in ipairs(hidden) do
      if a:pid() == app:pid() then return end
    end
    table.insert(hidden, app)
  end

  for i = #apps, 1, -1 do
    local app = apps[i]
    if app:pid() ~= front:pid() then
      track(app)
      app:hide()
    end
  end

  if seen[front:pid()] then
    track(front)
    hs.timer.doAfter(0.05, function() front:hide() end)
  end
end)

