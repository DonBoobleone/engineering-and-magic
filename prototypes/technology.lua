local technology = {
    type = "technology",
    name = "focus-stone-magic-missile",
    icon = "__engineering-and-magic__/graphics/equipment/focus-stone-magic-missile.png",
    icon_size = 64,
    effects = {
        {
            type = "unlock-recipe",
            recipe = "focus-stone-magic-missile"
        }
    },
    prerequisites = {"electronics"},  -- Example prerequisite; adjust based on your mod's tech tree.
    unit = {
        count = 50,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1}
        },
        time = 30
    },
    order = "a-m-a"  -- Adjust order string to fit your mod's sorting.
}

data:extend({
    technology
})



-- TODO: energy-channeling-speed tech -(1,2) 
    --[[ {
        type = "technology",
        name = "energy-channeling-speed-1",
        icons = util.technology_icon_constant_speed(weapon_shooting_speed_1_icon),
        effects =
        {
            {
                type = "gun-speed",
                ammo_category = "magic",
                modifier = 0.25
            },
            {
                type = "gun-speed",
                ammo_category = "explosion-magic",
                modifier = 0.1
            }
        },
        prerequisites = { "military" },
        unit =
        {
            count = 100 * 1,
            ingredients =
            {
                { "automation-science-pack", 1 }
            },
            time = 30
        },
        upgrade = true
    },
    {
        type = "technology",
        name = "energy-channeling-speed-2",
        icons = util.technology_icon_constant_speed(weapon_shooting_speed_1_icon),
        effects =
        {
            {
                type = "gun-speed",
                ammo_category = "magic",
                modifier = 0.25
            },
            {
                type = "gun-speed",
                ammo_category = "explosion-magic",
                modifier = 0.1
            }
        },
        prerequisites = { "energy-channeling-1", "logistic-science-pack" },
        unit =
        {
            count = 100 * 2,
            ingredients =
            {
                { "automation-science-pack", 1 },
                { "logistic-science-pack",   1 }
            },
            time = 30
        },
        upgrade = true
    } ]]