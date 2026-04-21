local A = Announcer

A.RegisterSpellDefinition(
  {
    key = "paladin_hammer_of_justice",
    class = "PALADIN",
    group = "crowd_control",
    behavior = "target_aura",
    flags = {
      announceOnMiss = true,
      announceOnResist = true,
      announceOnImmune = true,
      announceTarget = true,
      showRaidIcon = true
    },
    spellID = 853
  }
)


A.RegisterSpellDefinition(
  {
    key = "paladin_blessing_of_protection",
    class = "PALADIN",
    group = "tracked_aura",
    duration = 10,
      flags = {
        announceTarget = true,
        showRaidIcon = true
      },
    spellID = 1022
  }
)


A.RegisterSpellDefinition(
  {
    key = "paladin_blessing_of_freedom",
    class = "PALADIN",
    group = "tracked_aura",
    duration = 14,
    flags = {
      announceTarget = true,
      showRaidIcon = true
    },
    spellID = 1044
  }
)


A.RegisterSpellDefinition(
  {
    key = "paladin_blessing_of_sacrifice",
    class = "PALADIN",
    group = "tracked_aura",
    duration = 30,
    flags = {
      announceTarget = true,
      showRaidIcon = true
    },
    spellID = 6940
  }
)

A.RegisterSpellDefinition(
  {
    key = "paladin_divine_illumination",
    class = "PALADIN",
    group = "utility",
    duration = 15,
    spellID = 31842
  }
)

A.RegisterSpellDefinition(
  {
    key = "paladin_avenging_wrath",
    class = "PALADIN",
    group = "offensive",
    duration = 20,
    spellID = 31884
  }
)

A.RegisterSpellDefinition(
  {
    key = "paladin_divine_intervention",
    class = "PALADIN",
    group = "utility",
    flags = {
      announceTarget = true,
      showRaidIcon = true
    },
    spellID = 19752
  }
)