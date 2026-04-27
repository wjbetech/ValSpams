local A = _G.ValSpams

if not A then
	return
end

A.RegisterSpellDefinition(
  {
    key = "shaman_bloodlust",
    class = "SHAMAN",
    category = "offensive",
    behavior = "cast_success",
    duration = 40,
    spellID = 2825
  }
)

A.RegisterSpellDefinition(
  {
    key = "shaman_earth_elemental_totem",
    class = "SHAMAN",
    category = "defensive",
    behavior = "cast_success",
    spellID = 2062
  }
)

A.RegisterSpellDefinition(
  {
    key = "shaman_fire_elemental_totem",
    class = "SHAMAN",
    category = "offensive",
    behavior = "cast_success",
    spellID = 2894
  }
)


A.RegisterSpellDefinition(
  {
    key = "shaman_heroism",
    class = "SHAMAN",
    category = "offensive",
    behavior = "cast_success",
    duration = 40,
    spellID = 32182
  }
)

A.RegisterSpellDefinition(
  {
    key = "shaman_earth_shock",
    class = "SHAMAN",
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
    spellIDs = { 8042, 8044, 8045, 8046, 10412, 10413, 10414, 25454 }
  }
)

A.RegisterSpellDefinition(
  {
    key = "shaman_mana_tide_totem",
    class = "SHAMAN",
    category = "utility",
    behavior = "cast_success",
    duration = 12,
    spellIDs = { 16190 }
  }
)