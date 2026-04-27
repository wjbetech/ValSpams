local A = _G.ValSpams

if not A then
  return
end

A.RegisterSpellDefinition(
  {
    key = "warlock_banish",
    class = "WARLOCK",
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
    spellIDs = { 710, 18647 },
    durationBySpellID = {
      [710] = 20,
      [18647] = 30
    }
  }
)

A.RegisterSpellDefinition(
  {
    key = "warlock_fear",
    class = "WARLOCK",
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
    spellIDs = { 5782, 6213, 6215 },
    durationBySpellID = {
      [5782] = 10,
      [6213] = 15,
      [6215] = 20
    }
  }
)

A.RegisterSpellDefinition(
  {
    key = "warlock_howl_of_terror",
    class = "WARLOCK",
    category = "crowd_control",
    behavior = "target_aura",
    spellIDs = { 5484, 17928 },
    durationBySpellID = {
      [5484] = 6,
      [17928] = 8
    }
  }
)

A.RegisterSpellDefinition(
 {
  key = "warlock_soulstone",
  class = "WARLOCK",
  category = "utility",
  behavior = "target_aura",
  flags = {
    announceTarget = true,
    showRaidIcon = true,
    whisperTarget = true
  },
  spellID = 20707
 }
)
