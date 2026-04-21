local A = Announcer

A.RegisterSpellDefinition(
  {
    key = "mage_polymorph",
    class = "MAGE",
    category = "crowd_control",
    behavior = "target_aura",
    flags = {
      announceOnMiss = true,
      announceOnResist = true,
      announceOnImmune = true,
      announceTarget = true,
      showRaidIcon = true
    },
    spellID = 118
  }
)

A.RegisterSpellDefinition(
  {
    key = "mage_ice_block",
    class = "MAGE",
    category = "defensive",
    behavior = "self_aura",
    duration = 10,
    spellID = 45438
  }
)

if not A then
	return
end