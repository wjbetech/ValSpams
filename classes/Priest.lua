local A = Announcer

A.RegisterSpellDefinition(
  {
    key = "priest_shackle_undead",
    class = "PRIEST",
    group = "crowd_control",
    behavior = "target_aura",
    duration = 30,
    flags = {
      announceOnMiss = true,
      announceOnResist = true,
      announceOnImmune = true,
      announceTarget = true,
      showRaidIcon = true
    },
    spellID = 9484
  }
)

A.RegisterSpellDefinition(
  {
    key = "priest_silence",
    class = "PRIEST",
    group = "interrupt",
    behavior = "target_aura",
    duration = 5,
    flags = {
      announceOnMiss = true,
      announceOnResist = true,
      announceOnImmune = true,
      announceTarget = true,
      showRaidIcon = true
    },
    spellID = 15487
  }
)

A.RegisterSpellDefinition(
  {
    key = "priest_power_infusion",
    class = "PRIEST",
    group = "offensive",
    behavior = "target_aura",
    duration = 15,
    flags = {
      announceTarget = true,
      showRaidIcon = true
    },
    spellID = 10060
  }
)

A.RegisterSpellDefinition(
  {
    key = "priest_pain_supression",
    class = "PRIEST",
    group = "defensive",
    behavior = "target_aura",
    duration = 8,
    flags = {
      announceTarget = true,
      showRaidIcon = true
    },
    spellID = 33206
  }
)

if not A then
	return
end