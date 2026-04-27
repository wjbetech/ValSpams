local A = _G.ValSpams

if not A then
	return
end

A.RegisterSpellDefinition(
  {
    key = "warrior_berserker_rage",
    class = "WARRIOR",
    category = "defensive",
    behavior = "cast_success",
    spellIDs = { 18499 }
  }
)

-- make sure this only announced when devastate does not land
A.RegisterSpellDefinition(
  {
    key = "warrior_devastate",
    class = "WARRIOR",
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
    spellIDs = { 20243, 30016, 30022 }
  }
)

A.RegisterSpellDefinition(
{
    key = "warrior_challenging_shout",
    class = "WARRIOR",
    category = "taunt",
    behavior = "cast_success",
    spellIDs = { 1161 }
  }
)

A.RegisterSpellDefinition(
  {
    key = "warrior_concussion_blow",
    class = "WARRIOR",
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
    spellIDs = { 12809 }
  }
)

A.RegisterSpellDefinition(
  {
    key = "warrior_disarm",
    class = "WARRIOR",
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
    spellIDs = { 676 }
  }
)

A.RegisterSpellDefinition(
  {
    key = "warrior_intimidating_shout",
    class = "WARRIOR",
    category = "crowd_control",
    behavior = "cast_success",
    spellIDs = { 5246 }
  }
)

A.RegisterSpellDefinition(
  {
    key = "warrior_last_stand",
    class = "WARRIOR",
    category = "defensive",
    behavior = "self_aura",
    duration = 20,
    flags = { announceOnExpire = true },
    spellIDs = { 12975 }
  }
)

A.RegisterSpellDefinition(
  {
    key = "warrior_mocking_blow",
    class = "WARRIOR",
    category = "taunt",
    behavior = "target_aura",
    flags = {
      announceOnMiss = true,
      announceOnResist = true,
      announceOnImmune = true,
      announceTarget = true,
      showRaidIcon = true
    },
    spellIDs = { 694, 7400, 7402, 20559, 20560, 25266 }
  }
)

-- check into announcing on dodge, parry, block?
A.RegisterSpellDefinition(
  {
    key = "warrior_pummel",
    class = "WARRIOR",
    category = "interrupt",
    behavior = "cast_success",
    flags = {
      announceOnMiss = true,
      interruptOnly = true,
      announceTarget = true,
      showRaidIcon = true
    },
    spellIDs = { 6552, 6554 }
  }
)

A.RegisterSpellDefinition(
  {
    key = "warrior_shield_bash",
    class = "WARRIOR",
    category = "interrupt",
    behavior = "cast_success",
    flags = {
      announceOnMiss = true,
      interruptOnly = true,
      announceTarget = true,
      showRaidIcon = true
    },
    spellIDs = { 72, 1671, 1672, 29704 }
  }
)


A.RegisterSpellDefinition(
  {
    key = "warrior_shield_slam",
    class = "WARRIOR",
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
    spellIDs = { 23922 }
  }
)


A.RegisterSpellDefinition(
  {
    key = "warrior_shield_wall",
    class = "WARRIOR",
    category = "defensive",
    behavior = "self_aura",
    duration = 10,
    flags = {
      announceOnExpire = true
    },
    spellIDs = { 871 },
  }
)

A.RegisterSpellDefinition(
  {
    key = "warrior_spell_reflection",
    class = "WARRIOR",
    category = "defensive",
    behavior = "self_aura",
    flags = {
      outcomeOnly = true,
    },
    spellIDs = { 23920 },
  }
)

A.RegisterSpellDefinition(
  {
    key = "warrior_taunt",
    class = "WARRIOR",
    category = "taunt",
    behavior = "target_aura",
    flags = {
      announceOnMiss = true,
      announceOnResist = true,
      announceOnImmune = true,
      announceTarget = true,
      showRaidIcon = true
    },
    spellID = 355
  }
)