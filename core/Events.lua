local A = Announcer
local trackedAuraTimers = A.state.trackedAuraTimers

function A.GetCombatLogContext()
  local timestamp, combatEvent, hideCaster, sourceGUID, sourceName, sourceFlags, sourceRaidFlags, destGUID, destName,
  -- CoombatLogGetCurrentEventInfo is a WoW API global
---@diagnostic disable-next-line: undefined-global
  destFlags, destRaidFlags, extraArg1, extraArg2, extraArg3, extraArg4 = CombatLogGetCurrentEventInfo()
  
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
    extraArg1 = extraArg1,
    extraArg2 = extraArg2,
    extraArg3 = extraArg3,
    extraArg4 = extraArg4
  }
end

function A.HandleSourceCombatEvent(context, playerGUID)
  if context.sourceGUID ~= playerGUID then
    return nil
  end

  return nil
end

function A.HandleDestCombatEvent(context, playerGUID)
  if context.destGUID ~= playerGUID then
    return
  end
end


function A.HandleCombatLogEvent()
  local context = A.GetCombatLogContext()
  local playerGUID = UnitGUID("player")

  if context.sourceGUID ~= playerGUID and context.destGUID ~= playerGUID then
    return
  end

  A.HandleSourceCombatEvent(context, playerGUID)
  A.HandleDestCombatEvent(context, playerGUID)
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
