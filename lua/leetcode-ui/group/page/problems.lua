local cmd = require("leetcode.command")

local Title = require("leetcode-ui.lines.title")
local Button = require("leetcode-ui.lines.button.menu")
local BackButton = require("leetcode-ui.lines.button.menu.back")
local Buttons = require("leetcode-ui.group.buttons.menu")
local Page = require("leetcode-ui.group.page")

local footer = require("leetcode-ui.lines.footer")
local header = require("leetcode-ui.lines.menu-header")

local page = Page()

page:insert(header)

page:insert(Title({ "Menu" }, "Problems"))

local list = Button("List", {
    icon = "",
    sc = "p",
    on_press = cmd.problems,
})

local random = Button("Random", {
    icon = "",
    sc = "r",
    on_press = cmd.random_question,
})

local daily = Button("Daily", {
    icon = "󰃭",
    sc = "d",
    on_press = cmd.qot,
})

local top_interview = Button("Top Interview", {
    icon = "🔝",
    sc = "t",
    on_press = cmd.top_interview_150,
})

local back = BackButton("menu")

page:insert(Buttons({
    list,
    random,
    daily,
    top_interview,
    back,
}))

page:insert(footer)

return page
