local A = _G.ValSpams

if not A then
	return
end

A.RegisterSpellDefinition(
  {
    key = "paladin_avengers_shield",
    class = "PALADIN",
    category = "important_tank_outcome",
    behavior = "cast_success",
    flags = {
      outcomeOnly = true,
      announceOnMiss = true,
      announceOnDodge = true,
      announceOnParry = true,
      announceOnResist = true,
      announceOnImmune = true,
      announceTarget = true,
      showRaidIcon = true
    },
    spellID = 31935
  }
)

A.RegisterSpellDefinition(
  {
    key = "paladin_avenging_wrath",
    class = "PALADIN",
    category = "offensive",
    behavior = "self_aura",
    duration = 20,
    spellID = 31884
  }
)

A.RegisterSpellDefinition(
  {
    key = "paladin_blessing_of_freedom",
    class = "PALADIN",
    category = "defensive",
    behavior = "target_aura",
    duration = 14,
    flags = {
      announceTarget = true,
      showRaidIcon = true,
      whisperTarget = true
    },
    spellID = 1044
  }
)

A.RegisterSpellDefinition(
  {
    key = "paladin_blessing_of_protection",
    class = "PALADIN",
    category = "defensive",
    behavior = "target_aura",
    duration = 10,
      flags = {
        announceTarget = true,
        showRaidIcon = true,
        whisperTarget = true
      },
    spellIDs = { 1022, 5599, 10278 },
    durationBySpellID = {
      [1022] = 6,
      [5599] = 8,
      [10278] = 10
    }
  }
)

A.RegisterSpellDefinition(
  {
    key = "paladin_blessing_of_sacrifice",
    class = "PALADIN",
    category = "defensive",
    behavior = "target_aura",
    duration = 30,
    flags = {
      announceTarget = true,
      showRaidIcon = true,
      whisperTarget = true
    },
    spellIDs = { 6940, 20729, 27147, 27148 },
  }
)

A.RegisterSpellDefinition(
  {
    key = "paladin_divine_illumination",
    class = "PALADIN",
    category = "utility",
    behavior = "self_aura",
    duration = 15,
    spellID = 31842
  }
)

A.RegisterSpellDefinition(
  {
    key = "paladin_divine_intervention",
    class = "PALADIN",
    category = "utility",
    behavior = "target_aura",
    flags = {
      announceTarget = true,
      showRaidIcon = true,
      whisperTarget = true
    },
    spellID = 19752
  }
)

A.RegisterSpellDefinition(
  {
    key = "paladin_divine_shield",
    class = "PALADIN",
    category = "defensive",
    behavior = "self_aura",
    spellID = { 642, 1020 },
    durationBySpellID = {
      [642] = 10,
      [1020] = 12
    }
  }
)

A.RegisterSpellDefinition(
  {
    key = "paladin_exorcism",
    class = "PALADIN",
    category = "important_tank_outcome",
    behavior = "cast_success",
    flags = {
      outcomeOnly = true,
      announceOnMiss = true,
      announceOnDodge = true,
      announceOnParry = true,
      announceOnResist = true,
      announceOnImmune = true,
      announceTarget = true,
      showRaidIcon = true
    },
    spellIDs = { 879, 5614, 5615, 10312, 10313, 10314, 27138 }
  }
)

A.RegisterSpellDefinition(
  {
    key = "paladin_hammer_of_justice",
    class = "PALADIN",
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
    spellIDs = { 853, 5588, 5589, 10308 },
    durationBySpellID = {
      [853] = 3,
      [5588] = 4,
      [5589] = 5,
      [10308] = 6
    }
  }
)

A.RegisterSpellDefinition(
  {
    key = "paladin_judgement",
    class = "PALADIN",
    category = "important_tank_outcome",
    behavior = "cast_success",
    flags = {
      outcomeOnly = true,
      announceOnMiss = true,
      announceOnDodge = true,
      announceOnParry = true,
      announceOnResist = true,
      announceOnImmune = true,
      announceTarget = true,
      showRaidIcon = true
    },
    spellID = 20271
  }
)

A.RegisterSpellDefinition(
  {
    key = "paladin_lay_on_hands",
    class = "PALADIN",
    category = "defensive",
    behavior = "cast_success",
    flags = {
      announceTarget = true,
      showRaidIcon = true,
      whisperTarget = true
    },
    spellIDs  = {633, 2800, 10310, 27154 }
  }
)

A.RegisterSpellDefinition(
  {
    key = "paladin_righteous_defense",
    class = "PALADIN",
    category = "taunt",
    behavior = "target_aura",
    flags = {
      announceOnMiss = true,
      announceOnResist = true,
      announceOnImmune = true,
	      announceTarget = true,
	      showRaidIcon = true
    },
    spellID = 31789
  }
)

A.RegisterSpellDefinition(
  {
    key = "paladin_turn_evil",
    class = "PALADIN",
    category = "crowd_control",
    behavior = "target_aura",
    duration = 20,
    flags = {
      announceOnMiss = true,
      announceOnResist = true,
      announceOnImmune = true,
      announceOnBreak = true,
      announceTarget = true,
      showRaidIcon = true
    },
    spellIDs = { 10326 },
  }
)

A.RegisterSpellDefinition(
  {
    key = "paladin_turn_undead",
    class = "PALADIN",
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
    spellIDs = { 2878, 5627 },
    durationBySpellID = {
      [2878] = 10,
      [5627] = 20
    }
  }
)