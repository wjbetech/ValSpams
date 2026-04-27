local A = _G.ValSpams

if not A then
  return
end

A.RegisterSpellDefinition(
  {
    key = "mage_counterspell",
    class = "MAGE",
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
    spellIDs = { 2139 }
  }
)

A.RegisterSpellDefinition(
  {
    key = "mage_ice_block",
    class = "MAGE",
    category = "defensive",
    behavior = "self_aura",
    duration = 10,
    spellIDs = { 45438 }
  }
)

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
      announceOnBreak = true,
      announceTarget = true,
      showRaidIcon = true
    },
    spellIDs = { 118, 12824, 12825, 12826, 28271, 28272 },
    -- check this later
    -- think we can bundle same duration items into one array
    -- e.g. [12826, 28271, 28272]
    durationBySpellID = {
      [118] = 20,
      [12824] = 30,
      [12825] = 40,
      [12826] = 50,
      [28271] = 50,
      [28272] = 50
    }
  }
)
