---@diagnostic disable: undefined-global
local A = _G.ValSpams

A.registry = {
	self_aura = {},
	target_aura = {},
	cast_success = {},
	classSpellDefinitions = {},
	allSpellDefinitions = {}
}

for _, classToken in ipairs(A.classOrder) do
	A.registry.classSpellDefinitions[classToken] = {}
end

function A.RegisterSpellDefinition(spellDefinition)

  if not spellDefinition.category or not spellDefinition.behavior then
    return
  end

  if not spellDefinition.key or not spellDefinition.class then
    return
  end

	local resolvedSpellIDs = spellDefinition.spellIDs
	if resolvedSpellIDs == nil and spellDefinition.spellID ~= nil then
		resolvedSpellIDs = { spellDefinition.spellID }
	end

	if resolvedSpellIDs == nil or #resolvedSpellIDs == 0 then
		return
	end

	local registryGroup = A.registry[spellDefinition.behavior]
	if registryGroup == nil then
		return
	end

	local primarySpellID = spellDefinition.spellID or resolvedSpellIDs[1]
	local spellName = GetSpellInfo(primarySpellID)
	if not spellName then
		return
	end

	local storedDefinition = {
		key = spellDefinition.key,
		class = spellDefinition.class,
    category = spellDefinition.category,
    behavior = spellDefinition.behavior,
		spellID = primarySpellID,
		spellIDs = resolvedSpellIDs,
		spellName = spellName,
		duration = spellDefinition.duration,
    durationBySpellID = spellDefinition.durationBySpellID,
    flags = spellDefinition.flags or {},
	}

	for _, spellID in ipairs(resolvedSpellIDs) do
		registryGroup[spellID] = storedDefinition
	end
	A.registry.classSpellDefinitions[storedDefinition.class] =
		A.registry.classSpellDefinitions[storedDefinition.class] or {}
	table.insert(
		A.registry.classSpellDefinitions[storedDefinition.class],
		storedDefinition
	)
	table.insert(A.registry.allSpellDefinitions, storedDefinition)
end

function A.GetBehaviorDefinition(behavior, spellID)
  if A.registry[behavior] == nil then
    return nil
  end

	return A.registry[behavior][spellID]
end

function A.GetTrackedSpellDefinitions()
	return A.registry.allSpellDefinitions
end

function A.GetClassSpellDefinitions(classToken)
	return A.registry.classSpellDefinitions[classToken] or {}
end
