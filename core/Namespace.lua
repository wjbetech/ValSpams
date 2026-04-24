Announcer = Announcer or {}

local A = Announcer

A.name = "Announcer"
A.locale = GetLocale()
A.state = A.state or {}
A.state.optionCheckboxes = A.state.optionCheckboxes or {}
A.state.trackedSpellCheckboxes = A.state.trackedSpellCheckboxes or {}
A.state.classPanels = A.state.classPanels or {}
A.state.channelModeDropdown = A.state.channelModeDropdown or nil

A.classOrder = {
	"WARRIOR",
	"PALADIN",
	"HUNTER",
	"ROGUE",
	"PRIEST",
	"SHAMAN",
	"MAGE",
	"WARLOCK",
	"DRUID"
}

A.announceModeOrder = {
	"cast_only",
	"ending"
}

A.channelModeOrder = {
	"priority",
	"yell_only"
}