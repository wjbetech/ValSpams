local A = _G.ValSpams

if not A then
	return
end

A.RegisterSpellDefinition(
  {
    key = "rogue_blind",
    class = "ROGUE",
    category = "crowd_control",
    behavior = "target_aura",
    duration = 10,
    flags = {
      announceOnMiss = true,
      announceOnResist = true,
      announceOnImmune = true,
      announceOnBreak = true,
      announceTarget = true,
      showRaidIcon = true
    },
    spellID = 2094
  }
)

A.RegisterSpellDefinition(
  {
    key = "rogue_cheap_shot",
    class = "ROGUE",
    category = "crowd_control",
    behavior = "target_aura",
    duration = 4,
    flags = {
      announceOnMiss = true,
      announceOnResist = true,
      announceOnImmune = true,
      announceOnBreak = true,
      announceTarget = true,
      showRaidIcon = true
    },
    spellID = 1833
  }
)

A.RegisterSpellDefinition(
  {
    key = "rogue_cloak_of_shadows",
    class = "ROGUE",
    category = "defensive",
    behavior = "cast_success",
    duration = 5,
    spellIDs = { 31224 }
  }
)

A.RegisterSpellDefinition(
  {
    key = "rogue_evasion",
    class = "ROGUE",
    category = "defensive",
    behavior = "self_aura",
    duration = 15,
    spellIDs = { 5277, 26669 }
  }
)

A.RegisterSpellDefinition(
  {
    key = "rogue_kick",
    class = "ROGUE",
    category = "interrupt",
    behavior = "cast_success",
    flags = {
      announceOnMiss = true,
      announceOnResist = true,
      announceOnImmune = true,
      announceTarget = true,
      showRaidIcon = true,
      interruptOnly = true
    },
    spellIDs = { 1766, 1767, 1768, 1769, 38768 }
  }
)

A.RegisterSpellDefinition(
  {
    key = "rogue_kidney_shot",
    class = "ROGUE",
    category = "crowd_control",
    behavior = "target_aura",
    flags = {
      announceOnMiss = true,
      announceOnResist = true,
      announceOnImmune = true,
      announceOnBreak = true,
      announceTarget = true,
      showRaidIcon = true
    },
    spellIDs = { 408, 8643 }
  }
)

A.RegisterSpellDefinition(
  {
    key = "rogue_sap",
    class = "ROGUE",
    category = "crowd_control",
    behavior = "target_aura",
    duration = 45,
    flags = {
      announceOnMiss = true,
      announceOnResist = true,
      announceOnImmune = true,
      announceOnBreak = true,
      announceTarget = true,
      showRaidIcon = true
    },
    spellID = 6770
  }
)


