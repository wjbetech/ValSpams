---@diagnostic disable: undefined-global
local A = Announcer

function A.GetCombatLogContext()
  -- don't reformat that, Lua linter is a pain
  local timestamp, combatEvent,
  hideCaster, sourceGUID,
  sourceName, sourceFlags,
  sourceRaidFlags, destGUID,
  destName, destFlags,
  destRaidFlags, extraArg1,
  extraArg2, spellSchool,
  extraArg4, extraArg5, extraArg6
  = CombatLogGetCurrentEventInfo()

  -- direct map of combat log event info from above
  return {
    timestamp = timestamp,
    combatEvent = combatEvent,
    hideCaster = hideCaster,
    sourceGUID = sourceGUID,
    sourceName = sourceName,
    sourceFlags = sourceFlags,
    sourceRaidFlags = sourceRaidFlags,
    destGUID = destGUID,
    destName = destName,
    destFlags = destFlags,
    destRaidFlags = destRaidFlags,
    spellID = extraArg1,
    spellName = extraArg2,
    spellSchool = spellSchool,
    eventArg1 = extraArg4,
    eventArg2 = extraArg5,
    eventArg3 = extraArg6
  }
end

function A.HandleSourceCombatEvent(context, playerGUID)
  if context.sourceGUID ~= playerGUID then
    return nil
  end

  local castSuccessDefinition = A.GetBehaviorDefinition("cast_success", context.spellName)
  local targetAuraDefinition = A.GetBehaviorDefinition("target_aura", context.spellName)

  -- handle spell misses (maybe immunes and resists here too)
  if context.combatEvent == "SPELL_MISSED"
  then

    local missedDefinition = castSuccessDefinition
    or targetAuraDefinition

    if not missedDefinition then
      return nil
    end

    local missType = context.eventArg1 -- miss type (miss, dodge, resist, immune, etc)

    if missType == "MISS"
    and not missedDefinition.flags.announceOnMiss
    then
      return nil
    end

    if missType == "DODGE"
    and not missedDefinition.flags.announceOnDodge
    then
      return nil
    end

    if missType == "PARRY"
    and not missedDefinition.flags.announceOnParry
    then
      return nil
    end

    if missType == "RESIST"
    and not missedDefinition.flags.announceOnResist
    then
      return nil
    end

    if missType == "IMMUNE"
    and not missedDefinition.flags.announceOnImmune
    then
      return nil
    end

    if missedDefinition
    then
      return A.FormatMissMessage(
        context.sourceName,
        context.spellID,
        context.spellName,
        context.destName,
        missType -- miss type (miss, dodge, resist, immune, etc)
      )
    end
  end

  if context.combatEvent == "SPELL_INTERRUPT"
  and castSuccessDefinition
  then
    local interruptedSpellID = context.eventArg1
    local interruptedSpellName = context.eventArg2

    if castSuccessDefinition.category ~= "interrupt" and
    not castSuccessDefinition.flags.interruptOnly
    then
      return nil
    end

    return A.FormatInterruptMessage(
      context.sourceName,
      context.destName,
      interruptedSpellID,
      interruptedSpellName
    )
  end

  -- this should refer to successful casts
  -- and ensure only true interrupts are announced
  if context.combatEvent == "SPELL_CAST_SUCCESS"
  and castSuccessDefinition
  then
    -- don't announce interrupts on non-interruptables
    if castSuccessDefinition.flags.interruptOnly
    then
      return nil
    end

    return A.FormatCastMessage(
      context.sourceName,
      context.spellID,
      context.spellName,
      context.destName,
      castSuccessDefinition.duration
    )
  end

  -- this should refer to target-aura checks
  if (context.combatEvent == "SPELL_AURA_APPLIED"
  or context.combatEvent == "SPELL_AURA_REFRESH")
  and targetAuraDefinition
  then
    return A.FormatCastMessage(
      context.sourceName,
      context.spellID,
      context.spellName,
      context.destName,
      targetAuraDefinition.duration
    )
  end

  -- this should refer to removals of auras (natural and unnatural)
  if context.combatEvent == "SPELL_AURA_REMOVED"
  and targetAuraDefinition
  then
    if Announcer_Options.announceMode == "ending" then
      return A.FormatEndedMessage(
        context.sourceName,
        context.spellID,
        context.spellName,
        context.destName
      )
    end
  end

  return nil
end

function A.HandleDestCombatEvent(context, playerGUID)
  if context.destGUID ~= playerGUID then
    return nil
  end

  local selfAuraDefinition = A.GetBehaviorDefinition("self_aura", context.spellName)

  if (context.combatEvent == "SPELL_AURA_APPLIED"
  or context.combatEvent == "SPELL_AURA_REFRESH")
  and selfAuraDefinition
  then
    return A.FormatCastMessage(
      context.sourceName,
      context.spellID,
      context.spellName,
      nil,
      selfAuraDefinition.duration
    )
  end

  if context.combatEvent == "SPELL_AURA_REMOVED"
  and selfAuraDefinition
  then
    if Announcer_Options.announceMode == "ending" then
      return A.FormatEndedMessage(
        context.sourceName,
        context.spellID,
        context.spellName,
        nil
      )
    end
  end

  return nil
end


function A.HandleCombatLogEvent()
  local context = A.GetCombatLogContext()
  local playerGUID = UnitGUID("player")

  if context.sourceGUID ~= playerGUID and context.destGUID ~= playerGUID then
    return
  end

  local eventMessage = A.HandleSourceCombatEvent(context, playerGUID)

  if eventMessage == nil then
    eventMessage = A.HandleDestCombatEvent(context, playerGUID)
  end

  A.BroadcastMessage(eventMessage)
end

function A.OnEvent(self, event, ...)
  if event == "PLAYER_ENTERING_WORLD" then
    return
  end

  if event == "PLAYER_EQUIPMENT_CHANGED" then
    return
  end

  if event == "COMBAT_LOG_EVENT_UNFILTERED" then
    A.HandleCombatLogEvent()
    return
  end
end
