local A = _G.ValSpams

if not A then
	return
end

A.RegisterSpellDefinition(
  {
    key = "priest_fear_ward",
    class = "PRIEST",
    category = "utility",
    behavior = "target_aura",
    flags = {
      announceTarget = true,
      showRaidIcon = true,
      whisperTarget = true,
      -- might need an extra prop for when fear ward drops off
    },
    spellIDs = { 6346 }
  }
)

A.RegisterSpellDefinition(
  {
    key = "priest_lightwell",
    class = "PRIEST",
    category = "utility",
    behavior = "cast_success",
    spellIDs = { 724, 27870, 27871, 27875 }
  }
)

A.RegisterSpellDefinition(
  {
    key = "priest_pain_suppression",
    class = "PRIEST",
    category = "defensive",
    behavior = "target_aura",
    duration = 8,
    flags = {
      announceTarget = true,
      showRaidIcon = true,
      whisperTarget = true
    },
    spellID = 33206
  }
)

A.RegisterSpellDefinition(
  {
    key = "priest_power_infusion",
    class = "PRIEST",
    category = "offensive",
    behavior = "target_aura",
    duration = 15,
    flags = {
      announceTarget = true,
      showRaidIcon = true,
      whisperTarget = true
    },
    spellID = 10060
  }
)

A.RegisterSpellDefinition(
  {
    key = "priest_psychic_scream",
    class = "PRIEST",
    category = "crowd_control",
    behavior = "target_aura",
    flags = {
      announceOnMiss = true,
      announceOnResist = true,
      announceOnImmune = true,
    },
    spellIDs = { 8122, 8124, 10888, 10890 }
  }
)

A.RegisterSpellDefinition(
  {
    key = "priest_shadowfiend",
    class = "PRIEST",
    category = "offensive",
    behavior = "cast_success",
    spellIDs = { 34433 }
  }
)

A.RegisterSpellDefinition(
  {
    key = "priest_shackle_undead",
    class = "PRIEST",
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
    spellIDs = { 9484, 9485, 10955 },
    durationBySpellID = {
      [9484] = 30,
      [9485] = 40,
      [10955] = 50
    }
  }
)

A.RegisterSpellDefinition(
  {
    key = "priest_silence",
    class = "PRIEST",
    category = "crowd_control",
    behavior = "target_aura",
    duration = 5,
    flags = {
      announceOnMiss = true,
      announceOnResist = true,
      announceOnImmune = true,
      announceOnBreak = true,
      announceTarget = true,
      showRaidIcon = true
    },
    spellID = 15487
  }
)



