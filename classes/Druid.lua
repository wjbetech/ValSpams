local A = _G.ValSpams

if not A then
	return
end

A.RegisterSpellDefinition(
  {
    key = "druid_barkskin",
    class = "DRUID",
    category = "defensive",
    behavior = "self_aura",
    duration = 30,
    spellIDs = { 22812 }
  }
)

A.RegisterSpellDefinition(
  {
    key = "druid_bash",
    class = "DRUID",
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
    spellIDs = { 5211, 6798, 8983},
    durationBySpellID = {
      [5211] = 2,
      [6798] = 3,
      [8983] = 4
    }
  }
)


A.RegisterSpellDefinition(
  {
    key = "druid_cyclone",
    class = "DRUID",
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
    spellIDs = { 33786 }
  }
)

A.RegisterSpellDefinition(
  {
    key = "druid_entangling_roots",
    class = "DRUID",
    category = "crowd_control",
    behavior = "target_aura",
    flags = {
      announceOnResist = true,
      announceOnImmune = true,
      announceTarget = true,
      showRaidIcon = true
    },
    spellIDs = { 339, 1062, 5195, 5196, 9852, 9853, 26989 },
    durationBySpellID = {
      [339] = 12,
      [1062] = 15,
      [5195] = 18,
      [5196] = 21,
      [9852] = 24,
      [9853] = 27,
      [26989] = 27
    }
  }
)

A.RegisterSpellDefinition(
  {
    key = "druid_frenzied_regeneration",
    class = "DRUID",
    category = "defensive",
    behavior = "self_aura",
    duration = 10,
    spellIDs = { 22842, 22895, 22896, 26999 },
  }
)

A.RegisterSpellDefinition(
  {
    key = "druid_growl",
    class = "DRUID",
    category = "taunt",
    behavior = "target_aura",
    flags = {
      announceOnMiss = true,
      announceOnResist = true,
      announceOnImmune = true,
      announceTarget = true,
      showRaidIcon = true
    },
    spellIDs = { 6795 }
  }
)

A.RegisterSpellDefinition(
{
    key = "druid_hibernate",
    class = "DRUID",
    category = "crowd_control",
    behavior = "target_aura",
    flags = {
      announceOnResist = true,
      announceOnImmune = true,
      announceTarget = true,
      showRaidIcon = true
    },
    spellIDs = { 2637, 18657, 18658 },
    durationBySpellID = {
      [2637] = 20,
      [18657] = 30,
      [18658] = 40
    }
  }
)

A.RegisterSpellDefinition(
  {
    key = "druid_innervate",
    class = "DRUID",
    category = "utility",
    behavior = "target_aura",
    duration = 20,
    flags = {
      announceTarget = true,
      showRaidIcon = true,
      whisperTarget = true
    },
    spellIDs = { 29166 }
  }
)

A.RegisterSpellDefinition(
  {
    key = "druid_mangle_bear",
    class = "DRUID",
    category = "important_tank_outcome",
    behavior = "cast_success",
    flags = {
      announceOnMiss = true,
      announceOnDodge = true,
      announceOnParry = true,
      announceOnResist = true,
      announceOnImmune = true,
    },
    spellIDs = { 33878, 33986, 33987 }
  }
)




A.RegisterSpellDefinition(
  {
    key = "druid_tranquility",
    class = "DRUID",
    category = "defensive",
    behavior = "self_aura",
    duration = 8,
    spellIDs = { 740, 8918, 9862, 9863, 26983 },
  }
)

A.RegisterSpellDefinition(
  {
    key = "druid_rebirth",
    class = "DRUID",
    category = "utility",
    behavior = "cast_success",
    flags = {
      announceTarget = true,
      showRaidIcon = true,
      whisperTarget = true
    },
    spellIDs = { 20484, 20739, 20742, 20747, 20748, 26994 }
  }
)