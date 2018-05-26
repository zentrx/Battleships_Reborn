gamble = class({})

require("libraries/timers")


function gamble:OnSpellStart()
  local ability = self
	local caster = self:GetCaster()
	
  local abilityNames = {
    "gamble_heart",
    "gamble_bar",
    "gamble_diamond",
    "gamble_horseshoe",
    "gamble_bell",
  }

  local spinSet = {
    {"gamble_spin3",
    "gamble_spin1",
    "gamble_spin2"},

    {"gamble_spin1",
    "gamble_spin2",
    "gamble_spin3"},

    {"gamble_spin2",
    "gamble_spin3",
    "gamble_spin1"}
}
  local startIndex = 0
  local endIndex = 2
  local newAbilitySet = {}
  local oldAbilities = {}

  local lesserRewardGold = ability:GetSpecialValueFor("lesser_reward")
  local greaterRewardGold = ability:GetSpecialValueFor("greater_reward")

  -- Store the old ability info
  for i=startIndex,endIndex do
    local oldAbility = caster:GetAbilityByIndex(i)

    oldAbilities[i] = {
      ability = oldAbility,
      level = oldAbility:GetLevel(),
      name = oldAbility:GetName(),
    }    
  end

  -- Delete the old abilities
  for i=startIndex,endIndex do
    local oldAbilityName = oldAbilities[i]["name"]
    caster:RemoveAbility(oldAbilityName)
  end


    for i=startIndex,endIndex do
        local oldAbilityLevel = oldAbilities[i]["level"]

        local newAbilityName = spinSet[1][i+1]
        print(i .. spinSet[1][i+1])
        local newAbility = caster:AddAbility(newAbilityName)

        newAbility:SetAbilityIndex(i)
        newAbility:SetLevel(oldAbilityLevel)
    end

  Timers:CreateTimer(.1, function()
        
    for i=startIndex,endIndex do
        local tempAbility = caster:GetAbilityByIndex(i):GetName()
        caster:RemoveAbility(tempAbility)
    end
    
    for i=startIndex,endIndex do
        local oldAbilityLevel = oldAbilities[i]["level"]
    
        local newAbilityName = spinSet[2][i+1]
        local newAbility = caster:AddAbility(newAbilityName)
    
        newAbility:SetAbilityIndex(i)
        newAbility:SetLevel(oldAbilityLevel)
    end
end)

Timers:CreateTimer(.2, function()
        
    for i=startIndex,endIndex do
        local tempAbility = caster:GetAbilityByIndex(i):GetName()
        caster:RemoveAbility(tempAbility)
    end
    
    for i=startIndex,endIndex do
        local oldAbilityLevel = oldAbilities[i]["level"]
    
        local newAbilityName = spinSet[3][i+1]
        local newAbility = caster:AddAbility(newAbilityName)
    
        newAbility:SetAbilityIndex(i)
        newAbility:SetLevel(oldAbilityLevel)
    end
end)


Timers:CreateTimer(.3, function()
        
    for i=startIndex,endIndex do
        local tempAbility = caster:GetAbilityByIndex(i):GetName()
        caster:RemoveAbility(tempAbility)
    end
    startIndex=1
    local oldAbilityLevel = oldAbilities[0]["level"]

    local newAbilityName = GetRandomTableElement(abilityNames)
    newAbilitySet[newAbilityName] = true
    local newAbility = caster:AddAbility(newAbilityName)

    newAbility:SetAbilityIndex(0)
    newAbility:SetLevel(oldAbilityLevel)

    for i=startIndex,endIndex do
        local oldAbilityLevel = oldAbilities[i]["level"]
    
        local newAbilityName = spinSet[1][i+1]
        local newAbility = caster:AddAbility(newAbilityName)
    
        newAbility:SetAbilityIndex(i)
        newAbility:SetLevel(oldAbilityLevel)
    end
end)

Timers:CreateTimer(.4, function()
        
    for i=startIndex,endIndex do
        local tempAbility = caster:GetAbilityByIndex(i):GetName()
        caster:RemoveAbility(tempAbility)
    end
    
    for i=startIndex,endIndex do
        local oldAbilityLevel = oldAbilities[i]["level"]
    
        local newAbilityName = spinSet[2][i+1]
        local newAbility = caster:AddAbility(newAbilityName)
    
        newAbility:SetAbilityIndex(i)
        newAbility:SetLevel(oldAbilityLevel)
    end
end)
Timers:CreateTimer(.5, function()
        
    for i=startIndex,endIndex do
        local tempAbility = caster:GetAbilityByIndex(i):GetName()
        caster:RemoveAbility(tempAbility)
    end
    
    for i=startIndex,endIndex do
        local oldAbilityLevel = oldAbilities[i]["level"]
    
        local newAbilityName = spinSet[3][i+1]
        local newAbility = caster:AddAbility(newAbilityName)
    
        newAbility:SetAbilityIndex(i)
        newAbility:SetLevel(oldAbilityLevel)
    end
end)

Timers:CreateTimer(.6, function()
        
    for i=startIndex,endIndex do
        local tempAbility = caster:GetAbilityByIndex(i):GetName()
        caster:RemoveAbility(tempAbility)
    end
    startIndex=2
    local oldAbilityLevel = oldAbilities[1]["level"]

    local newAbilityName = GetRandomTableElement(abilityNames)
    newAbilitySet[newAbilityName] = true
    local newAbility = caster:AddAbility(newAbilityName)

    newAbility:SetAbilityIndex(1)
    newAbility:SetLevel(oldAbilityLevel)

    for i=startIndex,endIndex do
        local oldAbilityLevel = oldAbilities[i]["level"]
    
        local newAbilityName = spinSet[1][i+1]
        local newAbility = caster:AddAbility(newAbilityName)
    
        newAbility:SetAbilityIndex(i)
        newAbility:SetLevel(oldAbilityLevel)
    end
end)

Timers:CreateTimer(.7, function()
        
    for i=startIndex,endIndex do
        local tempAbility = caster:GetAbilityByIndex(i):GetName()
        caster:RemoveAbility(tempAbility)
    end
    
    for i=startIndex,endIndex do
        local oldAbilityLevel = oldAbilities[i]["level"]
    
        local newAbilityName = spinSet[2][i+1]
        local newAbility = caster:AddAbility(newAbilityName)
    
        newAbility:SetAbilityIndex(i)
        newAbility:SetLevel(oldAbilityLevel)
    end
end)

Timers:CreateTimer(.8, function()
        
    for i=startIndex,endIndex do
        local tempAbility = caster:GetAbilityByIndex(i):GetName()
        caster:RemoveAbility(tempAbility)
    end
    
    for i=startIndex,endIndex do
        local oldAbilityLevel = oldAbilities[i]["level"]
    
        local newAbilityName = spinSet[3][i+1]
        local newAbility = caster:AddAbility(newAbilityName)
    
        newAbility:SetAbilityIndex(i)
        newAbility:SetLevel(oldAbilityLevel)
    end
end)

Timers:CreateTimer(.9, function()
        
    for i=startIndex,endIndex do
        local tempAbility = caster:GetAbilityByIndex(i):GetName()
        caster:RemoveAbility(tempAbility)
    end
    startIndex=3
    local oldAbilityLevel = oldAbilities[2]["level"]

    local newAbilityName = GetRandomTableElement(abilityNames)
    newAbilitySet[newAbilityName] = true
    local newAbility = caster:AddAbility(newAbilityName)

    newAbility:SetAbilityIndex(2)
    newAbility:SetLevel(oldAbilityLevel)


end)




  Timers:CreateTimer( 1, function()

        -- Give a reward based on the number of matching abilities
        local numUniqueAbilities = TableCount(newAbilitySet)

        if numUniqueAbilities == 3 then
            -- do nothing
        elseif numUniqueAbilities == 2 then
            -- reward a bit of gold
            RewardGold(caster, lesserRewardGold)
        elseif numUniqueAbilities == 1 then
            -- reward a lot of gold
            RewardGold(caster, greaterRewardGold)
        end
    end)
end

function RewardGold(caster, rewardAmount)
  caster:ModifyGold(rewardAmount, false, 1)
  SendOverheadEventMessage(
    caster:GetPlayerOwner(), 
    OVERHEAD_ALERT_GOLD, 
    caster, 
    rewardAmount, 
    caster:GetPlayerOwner()
  )
end



function GetRandomTableElement( myTable )
    -- iterate over whole table to get all keys
    
    local keyset = {}
    for k in pairs(myTable) do
        table.insert(keyset, k)
    end
    -- now you can reliably return a random key
    return myTable[keyset[RandomInt(1, #keyset)]]
  end
  
  function TableCount( t )
    local n = 0
    for _ in pairs( t ) do
      n = n + 1
    end
    return n
  end