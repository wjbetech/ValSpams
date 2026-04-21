local A = Announcer

A.RegisterSpellDefinition({
  key = "hunter_feign_death",
  class = "HUNTER",
  category = "defensive",
  behavior = "self_aura",
  spellID = 5384,
})

A.RegisterSpellDefinition(
  {
    key = "hunter_misdirection",
    class = "HUNTER",
    category = "utility",
    behavior = "target_aura",
    duration = 30,
    spellID = 34477,
  }
)

A.RegisterSpellDefinition(
  {
    key = "hunter_intimidation",
    class = "HUNTER",
    category = "crowd_control",
    behavior = "target_aura",
    duration = 3,
    spellID = 19577
  }
)

if not A then
	return
end