local A = _G.ValSpams

if not A then
	return
end

A.RegisterSpellDefinition(
  {
    key = "hunter_feign_death",
    class = "HUNTER",
    category = "defensive",
    behavior = "cast_success",
    spellIDs = { 5384 },
  }
)

A.RegisterSpellDefinition(
  {
    key = "hunter_freezing_trap",
    class = "HUNTER",
    category = "crowd_control",
    behavior = "target_aura",
    duration = 30,
    flags = {
      announceOnMiss = true,
      announceOnResist = true,
      announceOnImmune = true,
      announceOnBreak = true,
      announceTarget = true,
      showRaidIcon = true
    },
    spellIDs = { 1499, 14310, 14311 },
    durationBySpellID = {
      [1499] = 10,
      [14310] = 15,
      [14311] = 20
    }
  }
)


A.RegisterSpellDefinition(
  {
    key = "hunter_intimidation",
    class = "HUNTER",
    category = "crowd_control",
    behavior = "target_aura",
    duration = 3,
    flags = {
      announceOnMiss = true,
      announceOnResist = true,
      announceOnImmune = true,
      announceOnBreak = true,
      announceTarget = true,
      showRaidIcon = true
    },
    spellIDs =  { 19577 }
  }
)

A.RegisterSpellDefinition(
  {
    key = "hunter_misdirection",
    class = "HUNTER",
    category = "utility",
    behavior = "target_aura",
    duration = 30,
      flags = {
        announceTarget = true,
        showRaidIcon = true,
        whisperTarget = true
      },
    spellIDs = { 34477 },
  }
)

A.RegisterSpellDefinition(
  {
    key = "hunter_tranquilizing_shot",
    class = "HUNTER",
    category = "utility",
    behavior = "cast_success",
    flags = {
      dispelOnly = true,
      announceOnMiss = true,
      announceOnImmune = true,
      announceTarget = true,
      showRaidIcon = true
    },
    spellIDs = { 19801 }
  }
)