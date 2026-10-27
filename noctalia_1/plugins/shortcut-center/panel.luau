--!nonstrict
-- Shortcut Center - searchable, read-only shortcut reference (plugin_api 10).
-- LAYOUT RULE: every ancestor between the panel and the scroll is a column with
-- flexGrow = 1; the scroll has flexGrow = 1 and NO fixed height. Fixed-height rows
-- (header/search/chips/count) sit above it. Never wrap the scroll in a container
-- that lacks flexGrow = 1.

local SHORTCUTS = {
  -- Niri
  { app = "Niri", category = "Niri", keys = "Super + H",         desc = "Focus left",                        note = "example" },
  { app = "Niri", category = "Niri", keys = "Super + J",         desc = "Focus down",                        note = "example" },
  { app = "Niri", category = "Niri", keys = "Super + K",         desc = "Focus up",                          note = "example" },
  { app = "Niri", category = "Niri", keys = "Super + L",         desc = "Focus right",                       note = "example" },
  { app = "Niri", category = "Niri", keys = "Super + Q",         desc = "Close focused window",              note = "example" },
  { app = "Niri", category = "Niri", keys = "Super + P", desc = "session menu",          note = "example" },
  { app = "Niri", category = "Niri", keys = "Super + Shift + H", desc = "Move column left",                  note = "example" },
  { app = "Niri", category = "Niri", keys = "Super + Shift + L", desc = "Move column right",                 note = "example" },
  { app = "Niri", category = "Niri", keys = "Super + Shift + F", desc = "Toggle fullscreen",                 note = "example" },
  { app = "Niri", category = "Niri", keys = "Super + Shift + ?", desc = "show keybinds",                 note = "example" },
  -- Zellij
  { app = "Zellij", category = "Zellij", keys = "Ctrl + Shift + Y", desc = "Show zellij keybinds",                  note = "if configured" },
  { app = "Zellij", category = "Zellij", keys = "Ctrl + Y", desc = "Open yazi file manager",                note = "if configured" },
  { app = "Zellij", category = "Zellij", keys = "Ctrl + P", desc = "Pane mode",                        note = "if configured" },
  { app = "Zellij", category = "Zellij", keys = "Ctrl + T", desc = "Tab mode",                         note = "if configured" },
  { app = "Zellij", category = "Zellij", keys = "Ctrl + S", desc = "Scroll / search mode",             note = "if configured" },
  { app = "Zellij", category = "Zellij", keys = "Ctrl + G",         desc = "Lock / unlock mode",             note = "Lock mode" },
  { app = "Zellij", category = "Zellij", keys = "Ctrl + P",         desc = "Pane mode",                     note = "if configured" },
  { app = "Zellij", category = "Zellij", keys = "Ctrl + T",         desc = "Tab mode",                      note = "if configured" },
  { app = "Zellij", category = "Zellij", keys = "Ctrl + N",         desc = "Resize mode",                   note = "if configured" },
  { app = "Zellij", category = "Zellij", keys = "Ctrl + H",         desc = "Move mode",                     note = "if configured" },
  { app = "Zellij", category = "Zellij", keys = "Ctrl + S",         desc = "Scroll mode",                   note = "if configured" },
  { app = "Zellij", category = "Zellij", keys = "Ctrl + O",         desc = "Session mode",                  note = "if configured" },
  { app = "Zellij", category = "Zellij", keys = "Ctrl + Q",         desc = "Quit",                          note = "if configured" },
  { app = "Zellij", category = "Zellij", keys = "N",                desc = "Create new pane",               note = "Pane mode" },
  { app = "Zellij", category = "Zellij", keys = "F",                desc = "Toggle pane fullscreen",        note = "Pane mode" },
  { app = "Zellij", category = "Zellij", keys = "S",                desc = "Create stacked pane",          note = "Pane mode" },
  { app = "Zellij", category = "Zellij", keys = "E",                desc = "Toggle floating / embedded pane", note = "Pane mode" },
  { app = "Zellij", category = "Zellij", keys = "Z",                desc = "Toggle pane frames",            note = "Pane mode" },
  { app = "Zellij", category = "Zellij", keys = "N",                desc = "Create new tab",               note = "Tab mode" },
  { app = "Zellij", category = "Zellij", keys = "T",                desc = "Close tab",                    note = "Tab mode" },
  { app = "Zellij", category = "Zellij", keys = "R",                desc = "Rename tab",                   note = "Tab mode" },
  { app = "Zellij", category = "Zellij", keys = "S",                desc = "Toggle active pane sync",      note = "Tab mode" },
  { app = "Zellij", category = "Zellij", keys = "[",                desc = "Break pane to the left",       note = "Tab mode" },
  { app = "Zellij", category = "Zellij", keys = "]",                desc = "Break pane to the right",      note = "Tab mode" },
  { app = "Zellij", category = "Zellij", keys = "H / J / K / L",    desc = "Increase resize",              note = "Resize mode" },
  { app = "Zellij", category = "Zellij", keys = "H / J / K / L",    desc = "Decrease resize",              note = "Resize mode" },
  { app = "Zellij", category = "Zellij", keys = "H / J / K / L",    desc = "Move pane",                   note = "Move mode" },
  { app = "Zellij", category = "Zellij", keys = "N",                desc = "Move pane to another side",   note = "Move mode" },
  { app = "Zellij", category = "Zellij", keys = "J / K",            desc = "Scroll line by line",          note = "Scroll mode" },
  { app = "Zellij", category = "Zellij", keys = "D / U",            desc = "Scroll half page",             note = "Scroll mode" },
  { app = "Zellij", category = "Zellij", keys = "H / L",            desc = "Scroll full page",             note = "Scroll mode" },
  { app = "Zellij", category = "Zellij", keys = "S",                desc = "Enter search mode",            note = "Scroll mode" },
  { app = "Zellij", category = "Zellij", keys = "N",                desc = "Next search match",            note = "Search mode" },
  { app = "Zellij", category = "Zellij", keys = "P",                desc = "Previous search match",        note = "Search mode" },
  { app = "Zellij", category = "Zellij", keys = "C",                desc = "Toggle case sensitivity",       note = "Search mode" },
  { app = "Zellij", category = "Zellij", keys = "O",                desc = "Toggle whole word search",      note = "Search mode" },
  { app = "Zellij", category = "Zellij", keys = "W",                desc = "Toggle search wrapping",        note = "Search mode" },
  { app = "Zellij", category = "Zellij", keys = "D",                desc = "Detach session",               note = "Session mode" },
  { app = "Zellij", category = "Zellij", keys = "W",                desc = "Open session manager",         note = "Session mode" },
  { app = "Zellij", category = "Zellij", keys = "P",                desc = "Open plugin manager",          note = "Session mode" },
  { app = "Zellij", category = "Zellij", keys = "S",                desc = "Share session",                note = "Session mode" },
  { app = "Zellij", category = "Zellij", keys = "Alt + H / J / K / L", desc = "Move focus",                note = "if configured" },
  { app = "Zellij", category = "Zellij", keys = "Alt + +",          desc = "Increase pane size",            note = "if configured" },
  { app = "Zellij", category = "Zellij", keys = "Alt + -",          desc = "Decrease pane size",            note = "if configured" },
  { app = "Zellij", category = "Zellij", keys = "Alt + [ / ]",      desc = "Swap pane layout",              note = "if configured" },
  { app = "Zellij", category = "Zellij", keys = "Alt + F",          desc = "Toggle floating pane",          note = "if configured" },
  -- Neovim / LazyVim
  { app = "Neovim", category = "Neovim", keys = "Space + F + F", desc = "Find files",           note = "example" },
  { app = "Neovim", category = "Neovim", keys = "Space + F + G", desc = "Find text in project", note = "if configured" },
  { app = "Neovim", category = "Neovim", keys = "Space + E",     desc = "Toggle file explorer", note = "example" },
  { app = "Neovim", category = "Neovim", keys = "Space + U + Z", desc = "Toggle zoom mode",     note = "if configured" },
  { app = "Neovim", category = "Neovim", keys = "Space + C + A", desc = "Code action",          note = "example" },
  { app = "Neovim", category = "Neovim", keys = "Space + S + G", desc = "Search text",          note = "if configured" },
  { app = "Neovim", category = "Neovim", keys = "Space + G + G", desc = "Open LazyGit",         note = "if configured" },
  { app = "Neovim", category = "Neovim", keys = "Space + B + D", desc = "Delete current buffer", note = "if configured" },
  { app = "Neovim", category = "Neovim", keys = "Space + Q + Q", desc = "Quit all",             note = "if configured" },
  -- VS Code
  { app = "VS Code", category = "VS Code", keys = "Ctrl + Shift + P", desc = "Command Palette" },
  { app = "VS Code", category = "VS Code", keys = "Ctrl + P",         desc = "Quick Open (go to file)" },
  { app = "VS Code", category = "VS Code", keys = "Ctrl + Shift + F", desc = "Search in files" },
  { app = "VS Code", category = "VS Code", keys = "Ctrl + B",         desc = "Toggle sidebar" },
  { app = "VS Code", category = "VS Code", keys = "Ctrl + `",         desc = "Toggle terminal" },
  { app = "VS Code", category = "VS Code", keys = "Ctrl + Shift + E", desc = "Show Explorer" },
  { app = "VS Code", category = "VS Code", keys = "Ctrl + /",         desc = "Toggle line comment" },
  { app = "VS Code", category = "VS Code", keys = "Ctrl + D",         desc = "Add selection to next match" },
  -- Other
  { app = "Browser", category = "Other", keys = "Ctrl + L",         desc = "Focus the address bar" },
  { app = "Browser", category = "Other", keys = "Ctrl + T",         desc = "Open a new tab" },
  { app = "Browser", category = "Other", keys = "Ctrl + Shift + T", desc = "Reopen the last closed tab" },
  { app = "Browser", category = "Other", keys = "Ctrl + F",         desc = "Find in page" },
}

local CATEGORY_ORDER = { "Niri", "Zellij", "Neovim", "VS Code", "Other" }
local ALL = "All"

local isKnownCategory = {}
for _, name in ipairs(CATEGORY_ORDER) do isKnownCategory[name] = true end

local function compact(s) return (string.gsub(s, "%s+", "")) end

local entries, categoryCount = {}, {}
for index, raw in ipairs(SHORTCUTS) do
  local cat = isKnownCategory[raw.category] and raw.category or "Other"
  local e = { id = index, app = raw.app, category = cat, keys = raw.keys, desc = raw.desc, note = raw.note }
  e.hay = string.lower(table.concat({ e.app, e.category, e.keys, compact(e.keys), e.desc, e.note or "" }, " "))
  table.insert(entries, e)
  categoryCount[cat] = (categoryCount[cat] or 0) + 1
end

local visibleCategories = { ALL }
for _, name in ipairs(CATEGORY_ORDER) do
  if (categoryCount[name] or 0) > 0 then table.insert(visibleCategories, name) end
end

local query, category = "", ALL
local searchRev, listRev = 0, 0 -- fresh keys: reset the uncontrolled input / scroll offset
local render

local function filteredEntries()
  local tokens = {}
  for t in string.gmatch(string.lower(query), "%S+") do table.insert(tokens, t) end
  local result = {}
  for _, e in ipairs(entries) do
    local ok = (category == ALL) or (e.category == category)
    if ok then
      for _, t in ipairs(tokens) do
        if not string.find(e.hay, t, 1, true) then ok = false break end
      end
    end
    if ok then table.insert(result, e) end
  end
  return result
end

local function keycap(text)
  return ui.row({ fill = "surface_variant", border = "outline/0.6", borderWidth = 1, radius = 6,
                  paddingH = 8, paddingV = 3, align = "center" }, {
    ui.label({ text = text, fontSize = 12, fontWeight = "semibold", color = "on_surface" }),
  })
end

local function splitKeys(keys)
  local parts, pos = {}, 1
  while true do
    local from, to = string.find(keys, " + ", pos, true)
    if not from then table.insert(parts, string.sub(keys, pos)) break end
    table.insert(parts, string.sub(keys, pos, from - 1))
    pos = to + 1
  end
  return parts
end

local function keysRow(keys)
  local children = {}
  for i, part in ipairs(splitKeys(keys)) do
    if i > 1 then table.insert(children, ui.label({ text = "+", fontSize = 12, color = "on_surface_variant" })) end
    table.insert(children, keycap(part))
  end
  return ui.row({ gap = 4, align = "center" }, children)
end

local function card(e)
  local title = { ui.label({ text = e.app, fontSize = 12, fontWeight = "semibold", color = "primary" }) }
  if e.note then table.insert(title, ui.label({ text = e.note, fontSize = 11, color = "on_surface_variant" })) end
  return ui.row({ key = "sc-" .. e.id, fill = "surface_variant/0.45", border = "outline/0.35", borderWidth = 1,
                  radius = 10, paddingH = 12, paddingV = 8, gap = 12, align = "center" }, {
    ui.column({ flexGrow = 1, gap = 2, align = "start" }, {
      ui.row({ gap = 8, align = "center" }, title),
      ui.label({ text = e.desc, fontSize = 13, color = "on_surface" }),
    }),
    keysRow(e.keys),
  })
end

local function emptyState()
  local hint = "Try a different search or category."
  if query ~= "" then
    hint = string.format('Nothing matches "%s" in %s.', query, category == ALL and "any category" or category)
  end
  return ui.column({ key = "empty", align = "center", gap = 8, paddingV = 40 }, {
    ui.glyph({ name = "search-off", size = 36, color = "on_surface_variant" }),
    ui.label({ text = "No shortcuts found", fontSize = 15, fontWeight = "semibold", color = "on_surface" }),
    ui.label({ text = hint, fontSize = 12, color = "on_surface_variant" }),
    ui.button({ key = "clear", text = "Clear filters", variant = "outline", controlSize = "sm",
      onClick = function() query = "" category = ALL searchRev += 1 listRev += 1 render() end }),
  })
end

local function countText(shown)
  local total = #entries
  local noun = (total == 1) and "shortcut" or "shortcuts"
  if query == "" and category == ALL then return string.format("%d %s", total, noun) end
  return string.format("%d of %d %s", shown, total, noun)
end

render = function()
  local results = filteredEntries()
  local cards = {}
  for _, e in ipairs(results) do table.insert(cards, card(e)) end
  if #cards == 0 then cards = { emptyState() } end

  local chips = {}
  for _, name in ipairs(visibleCategories) do
    local active = (name == category)
    table.insert(chips, ui.button({ key = "cat-" .. name, text = name,
      variant = active and "primary" or "outline", selected = active, controlSize = "sm",
      onClick = function() category = name listRev += 1 render() end }))
  end

  panel.render(ui.column({ flexGrow = 1, gap = 10, align = "stretch" }, {
    ui.row({ align = "center", gap = 12 }, {
      ui.glyph({ name = "keyboard", size = 28, color = "primary" }),
      ui.column({ flexGrow = 1, gap = 2, align = "start" }, {
        ui.label({ text = "Shortcut Center", fontSize = 18, fontWeight = "bold", color = "on_surface" }),
        ui.label({ text = "All your keyboard shortcuts in one place", fontSize = 12, color = "on_surface_variant" }),
      }),
      ui.button({ key = "close", glyph = "close", variant = "ghost", tooltip = "Close",
                  onClick = function() panel.close() end }),
    }),
    ui.input({ key = "search-" .. searchRev, placeholder = "Search app, keys, description or category...",
               focus = true,
               onChange = function(v) query = v or "" listRev += 1 render() end }),
    ui.row({ gap = 6, align = "center" }, chips),
    ui.row({ align = "center", gap = 8 }, {
      ui.label({ text = countText(#results), fontSize = 12, color = "on_surface_variant", flexGrow = 1 }),
      ui.label({ text = "Editable sample data", fontSize = 11, color = "on_surface_variant/0.7" }),
    }),
    -- Remaining height. No height/minHeight on purpose.
    ui.scroll({ key = "list-" .. listRev, flexGrow = 1, gap = 8, align = "stretch" }, cards),
  }))
end

-- Host rebuilds controls on open, so reset state. `context` (optional) preselects a
-- category: `noctalia msg panel-open custom/shortcut-center:panel zellij`.
function onOpen(context)
  query, category = "", ALL
  if type(context) == "string" and context ~= "" then
    local want = string.lower(compact(context))
    for _, name in ipairs(visibleCategories) do
      if string.lower(compact(name)) == want then category = name break end
    end
  end
  searchRev += 1
  listRev += 1
  render()
end
