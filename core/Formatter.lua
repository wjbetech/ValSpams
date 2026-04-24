local A = Announcer

function A.RenderTemplate(template, tokens)
  local renderedText = template

  for token, value in pairs(tokens) do
    renderedText = string.gsub(renderedText, token, tostring(value or ""))
  end

  renderedText = string.gsub(renderedText, "%s+", " ")
  renderedText = string.gsub(renderedText, "%s+([!%.,:%?])", "%1")
  renderedText = string.gsub(renderedText, "^%s+", "")
  renderedText = string.gsub(renderedText, "%s+$", "")

  return renderedText
end

function A.GetDurationText(duration)
  if duration == nil or duration <= 0 then
    return ""
  end

  return tostring(duration).."s"
end

function A.GetSpellText(spellID, spellName)
	return GetSpellLink(spellID) or tostring(spellName)
end

function A.GetActorName(sourceName)
	if sourceName and sourceName ~= "" then
		return sourceName
	end

	return UnitName("player") or A.name
end

function A.GetDisplayActorName(sourceName)
	if not Announcer_Options.showPlayerName then
		return nil
	end

	return A.GetActorName(sourceName)
end

function A.GetDisplayTarget(destName)
	if not Announcer_Options.showTarget then
		return nil
	end

	if destName and destName ~= "" then
		return destName
	end

	return nil
end

function A.GetMissTypeText(missType)
  local missTypeLabels = {
    MISS = A.L.outcomeMiss,
    DODGE = A.L.outcomeDodge,
    PARRY = A.L.outcomeParry,
    RESIST = A.L.outcomeResist,
    IMMUNE = A.L.outcomeImmune,
  }

  return missTypeLabels[missType] or tostring(missType or "")
end

function A.FormatCastMessage(sourceName, spellID, spellName, destName, duration)
  local template
	local actorName = A.GetDisplayActorName(sourceName)
	local spellText = A.GetSpellText(spellID, spellName)
	local displayTarget = A.GetDisplayTarget(destName)
	local durationText = A.GetDurationText(duration)

	if displayTarget then
		template = A.L.castOnMessage
  else
    template = A.L.castMessage
  end

	return A.RenderTemplate(template,
    {
      ["spell:source"] = actorName,
      ["spell:link"] = spellText,
      ["spell:target"] = displayTarget,
      ["spell:duration"] = durationText,
      ["spell:missType"] = ""
    })
end

function A.FormatEndedMessage(sourceName, spellID, spellName, destName)
	local spellText = A.GetSpellText(spellID, spellName)
  local displayTarget = A.GetDisplayTarget(destName)
  
  return A.RenderTemplate(
    A.L.endedMessage,
    {
      ["spell:source"] = A.GetDisplayActorName(sourceName),
      ["spell:link"] = spellText,
      ["spell:target"] = displayTarget,
      ["spell:duration"] = "",
      ["spell:missType"] = ""
    }
  )
end

function A.FormatMissMessage(sourceName, spellID, spellName, destName, missType)
	local spellText = A.GetSpellText(spellID, spellName)
  local displayTarget = A.GetDisplayTarget(destName)
  local missTypeText = A.GetMissTypeText(missType)

  return A.RenderTemplate(
    A.L.missMessage,
    {
      ["spell:source"] = A.GetDisplayActorName(sourceName),
      ["spell:link"] = spellText,
      ["spell:target"] = displayTarget,
      ["spell:duration"] = "",
      ["spell:missType"] = missTypeText
    }
  )
end

function A.FormatInterruptMessage(sourceName, destName, interruptedSpellID, interruptedSpellName)
	local interruptedSpellText = A.GetSpellText(interruptedSpellID, interruptedSpellName)
  local displayTarget = A.GetDisplayTarget(destName)

  return A.RenderTemplate(
    A.L.interruptMessage,
    {
      ["spell:source"] = A.GetDisplayActorName(sourceName),
      ["spell:link"] = interruptedSpellText,
      ["spell:target"] = displayTarget,
      ["spell:duration"] = "",
      ["spell:missType"] = ""
    }
  )
end