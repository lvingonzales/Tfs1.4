local combat = {}                                                                   -- combat object is assigned as an array instead of a 
                                                                                    -- single object.

local frameDelay = 275                                                              -- Assigned the delay between steps to a variable to 
                                                                                    -- allow for better control.
                                                                                    
local iceArea = {                                                                   -- This array contains each step in the animation
    {
        {0, 0, 0, 0, 0, 0, 0,},
        {0, 0, 0, 0, 0, 0, 0,},
        {0, 1, 0, 0, 0, 0, 0,},
        {1, 0, 0, 2, 0, 0, 1,},
        {0, 1, 0, 0, 0, 0, 0,},
        {0, 0, 1, 0, 0, 0, 0,},
        {0, 0, 0, 1, 0, 0, 0,}
    },
    {
        {0, 0, 0, 0, 0, 0, 0,},
        {0, 0, 1, 0, 1, 0, 0,},
        {0, 1, 0, 0, 0, 1, 0,},
        {1, 0, 0, 2, 0, 0, 1,},
        {0, 1, 0, 1, 0, 1, 0,},
        {0, 0, 1, 0, 0, 0, 0,},
        {0, 0, 0, 1, 0, 0, 0,}
    },
    {
        {0, 0, 0, 0, 0, 0, 0},
        {0, 0, 1, 0, 1, 0, 0},
        {0, 1, 0, 0, 0, 1, 0},
        {1, 0, 1, 2, 1, 0, 1},
        {0, 1, 0, 1, 0, 1, 0},
        {0, 0, 1, 0, 1, 0, 0},
        {0, 0, 0, 1, 0, 0, 0}
    },
    {
        {0, 0, 0, 0, 0, 0, 0,},
        {0, 0, 1, 0, 1, 0, 0,},
        {0, 0, 0, 0, 0, 1, 0,},
        {1, 0, 1, 2, 1, 0, 1,},
        {0, 0, 0, 1, 0, 1, 0,},
        {0, 0, 1, 0, 1, 0, 0,},
        {0, 0, 0, 0, 0, 0, 0,}
    },
    {
        {0, 0, 0, 1, 0, 0, 0,},
        {0, 0, 1, 0, 1, 0, 0,},
        {0, 0, 0, 1, 0, 1, 0,},
        {1, 0, 1, 2, 1, 0, 1,},
        {0, 0, 0, 1, 0, 1, 0,},
        {0, 0, 1, 0, 1, 0, 0,},
        {0, 0, 0, 0, 0, 0, 0,}
    },
    {
        {0, 0, 0, 1, 0, 0, 0,},
        {0, 0, 1, 0, 1, 0, 0,},
        {0, 0, 0, 1, 0, 0, 0,},
        {1, 0, 1, 2, 1, 0, 1,},
        {0, 0, 0, 0, 0, 0, 0,},
        {0, 0, 1, 0, 1, 0, 0,},
        {0, 0, 0, 0, 0, 0, 0,}
    },
    {
        {0, 0, 0, 1, 0, 0, 0,},
        {0, 0, 1, 0, 1, 0, 0,},
        {0, 1, 0, 1, 0, 0, 0,},
        {1, 0, 1, 2, 1, 0, 1,},
        {0, 1, 0, 0, 0, 0, 0,},
        {0, 0, 1, 0, 1, 0, 0,},
        {0, 0, 0, 1, 0, 0, 0,}
    },
    {
        {0, 0, 0, 1, 0, 0, 0,},
        {0, 0, 1, 0, 1, 0, 0,},
        {0, 1, 0, 1, 0, 1, 0,},
        {1, 0, 1, 2, 1, 0, 1,},
        {0, 1, 0, 1, 0, 1, 0,},
        {0, 0, 1, 0, 1, 0, 0,},
        {0, 0, 0, 1, 0, 0, 0,}
    },
    {
        {0, 0, 0, 0, 0, 0, 0,},
        {0, 0, 1, 0, 1, 0, 0,},
        {0, 1, 0, 0, 0, 1, 0,},
        {1, 0, 1, 2, 1, 0, 1,},
        {0, 1, 0, 1, 0, 1, 0,},
        {0, 0, 1, 0, 1, 0, 0,},
        {0, 0, 0, 1, 0, 0, 0,}
    },
    {
        {0, 0, 0, 1, 0, 0, 0,},
        {0, 0, 1, 0, 1, 0, 0,},
        {0, 0, 0, 1, 0, 1, 0,},
        {1, 0, 1, 2, 1, 0, 1,},
        {0, 0, 0, 1, 0, 1, 0,},
        {0, 0, 1, 0, 1, 0, 0,},
        {0, 0, 0, 0, 0, 0, 0,}
    },
    {
        {0, 0, 0, 1, 0, 0, 0,},
        {0, 0, 1, 0, 1, 0, 0,},
        {0, 0, 0, 1, 0, 0, 0,},
        {1, 0, 1, 2, 1, 0, 1,},
        {0, 0, 0, 0, 0, 0, 0,},
        {0, 0, 1, 0, 1, 0, 0,},
        {0, 0, 0, 0, 0, 0, 0,}
    },
    {
        {0, 0, 0, 1, 0, 0, 0,},
        {0, 0, 1, 0, 1, 0, 0,},
        {0, 1, 0, 1, 0, 0, 0,},
        {1, 0, 1, 2, 1, 0, 1,},
        {0, 1, 0, 0, 0, 0, 0,},
        {0, 0, 1, 0, 1, 0, 0,},
        {0, 0, 0, 1, 0, 0, 0,}
    },
    {
        {0, 0, 0, 1, 0, 0, 0,},
        {0, 0, 1, 0, 1, 0, 0,},
        {0, 1, 0, 1, 0, 1, 0,},
        {1, 0, 1, 2, 1, 0, 1,},
        {0, 1, 0, 1, 0, 1, 0,},
        {0, 0, 1, 0, 1, 0, 0,},
        {0, 0, 0, 1, 0, 0, 0,}
    },
    {
        {0, 0, 0, 0, 0, 0, 0,},
        {0, 0, 1, 0, 1, 0, 0,},
        {0, 1, 0, 0, 0, 1, 0,},
        {1, 0, 1, 2, 1, 0, 1,},
        {0, 1, 0, 1, 0, 1, 0,},
        {0, 0, 1, 0, 1, 0, 0,},
        {0, 0, 0, 1, 0, 0, 0,}
    },
    {
        {0, 0, 0, 0, 0, 0, 0,},
        {0, 0, 1, 0, 1, 0, 0,},
        {0, 0, 0, 0, 0, 1, 0,},
        {1, 0, 1, 2, 1, 0, 1,},
        {0, 0, 0, 1, 0, 1, 0,},
        {0, 0, 1, 0, 1, 0, 0,},
        {0, 0, 0, 0, 0, 0, 0,}
    },
    {
        {0, 0, 0, 1, 0, 0, 0,},
        {0, 0, 1, 0, 1, 0, 0,},
        {0, 0, 0, 1, 0, 1, 0,},
        {1, 0, 1, 2, 1, 0, 1,},
        {0, 0, 0, 1, 0, 1, 0,},
        {0, 0, 1, 0, 1, 0, 0,},
        {0, 0, 0, 0, 0, 0, 0,}
    },
    {
        {0, 0, 0, 1, 0, 0, 0,},
        {0, 0, 1, 0, 1, 0, 0,},
        {0, 0, 0, 1, 0, 0, 0,},
        {1, 0, 1, 2, 1, 0, 1,},
        {0, 0, 0, 0, 0, 0, 0,},
        {0, 0, 1, 0, 1, 0, 0,},
        {0, 0, 0, 0, 0, 0, 0,}
    },
    {
        {0, 0, 0, 1, 0, 0, 0,},
        {0, 0, 0, 0, 0, 0, 0,},
        {0, 0, 0, 1, 0, 0, 0,},
        {0, 0, 1, 2, 1, 0, 0,},
        {0, 0, 0, 0, 0, 0, 0,},
        {0, 0, 1, 0, 1, 0, 0,},
        {0, 0, 0, 0, 0, 0, 0,}
    } 
}

for i = 1, #iceArea do                                                              -- This for loop ensures that all instances of combat for
    combat[i] = Combat()                                                            -- this spell use the correct spell effect/ animation
    combat[i]:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_ICETORNADO)
end

for x, _ in ipairs(iceArea) do                                                      -- This for loop adds the stages of the animation to an
    combat[x]:setArea(createCombatArea(iceArea[x]))                                 -- object array creating a combat area for each one.
end

function executeCombatAnimation(p, i)                                               -- Function used with addEvent() to place the animations 
    p.combat[i]:execute(p.creature, p.variant)                                      -- on the correct square.
end

function onCastSpell(creature, variant)
    local p = {creature = creature, variant = variant, combat = combat}             -- Objects are passed to p for use as arguments in 
                                                                                    -- executeCombatAnimation() above.
    for i = 1, #iceArea do
        if i == 1 then
            combat[i]:execute(creature, variant);
        else
            addEvent(executeCombatAnimation, (frameDelay * i) - frameDelay, p, i)   -- Plays the animations on the appropriate tiles, with a 
        end                                                                         -- sort of buffer to allow the animations to play properly.
    end

        return true
end
