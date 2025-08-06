local magic_missile_rune = {
    type = "active-defense-equipment",
    name = "focus-stone-magic-missile",
    sprite =
    {
        filename = "__engineering-and-magic__/graphics/equipment/focus-stone-magic-missile.png",
        width = 64,
        height = 64,
        priority = "medium",
    },
    shape = { width = 2, height = 2, type = "full" },
    energy_source = { type = "electric", usage_priority = "secondary-input", buffer_capacity = "1MJ" },
    attack_parameters =
    {
        type = "projectile",
        ammo_category = "magic",
        damage_modifier = 1,
        cooldown = 120,
        projectile_center = { 0, 0 },
        projectile_creation_distance = 0.6,
        range = 25,
        sound =
        {
            filename = "__base__/sound/fight/robot-selfdestruct-2.ogg",
            volume = 0.7
        },
        ammo_type =
        {
            type = "projectile",
            category = "magic",
            energy_consumption = "1MJ",
            action = {
                {
                    type = "direct",
                    action_delivery = {
                        {
                            type = "projectile",
                            projectile = "magic-missile",
                            starting_speed = 0.4,
                            direction_deviation = 3.14
                        },
                        {
                            type = "projectile",
                            projectile = "magic-missile",
                            starting_speed = 0.3,
                            direction_deviation = 1.0
                        },
                        {
                            type = "projectile",
                            projectile = "magic-missile",
                            starting_speed = 0.2,
                            direction_deviation = -0.5
                        }
                    }
                }
            }
        }
    },
    automatic = false,
    categories = {"armor"}
}

local fus_ro_dah_rune = {
    type = "active-defense-equipment",
    name = "focus-stone-fus-ro-dah",
    categories = { "armor" },
    sprite =
    {
        filename = "__engineering-and-magic__/graphics/equipment/focus-stone-fus-ro-dah.png",
        width = 64,
        height = 64,
        priority = "medium",
    },
    shape =
    {
        width = 2,
        height = 2,
        type = "full"
    },
    energy_source =
    {
        type = "electric",
        usage_priority = "secondary-input",
        buffer_capacity = "2MJ"
    },
    attack_parameters =
    {
        type = "projectile",
        ammo_category = "magic",
        damage_modifier = 1,
        cooldown = 120,
        projectile_center = { 0, 0 },
        projectile_creation_distance = 0.6,
        range = 15,
        sound =
        {
            filename = "__base__/sound/fight/robot-selfdestruct-2.ogg",
            volume = 0.7
        },
        ammo_type =
        {
            type = "projectile",
            category = "magic",
            target_type = "direction",
            clamp_position = true,
            energy_consumption = "1MJ",
            action =
            {
                {
                    type = "direct",
                    action_delivery =
                    {
                        type = "projectile",
                        projectile = "fus-ro-dah-wave",
                        starting_speed = 1,
                        starting_speed_deviation = 0.1,
                        max_range = 15
                    }
                },
            }
        }
    },
    automatic = false
}

local shield_equipment = {
    type = "active-defense-equipment",
    name = "round-shield-equipment",
    sprite =
    {
        filename = "__engineering-and-magic__/graphics/equipment/round-shield.png",
        width = 64,
        height = 64,
        priority = "medium"
    },
    shape =
    {
        width = 2,
        height = 2,
        type = "full"
    },
    energy_source =
    {
        type = "electric",
        usage_priority = "primary-input",
        buffer_capacity = "20kJ",
        --drain = "10J" --cost of carrying the shield around
    },
    automatic = true,
    categories = { "warrior-armor" },
    attack_parameters =
    {
        type = "projectile",
        cooldown = 120,
        cooldown_deviation = 0.5,
        range = 1,
        damage_modifier = 1,
        sound = { filename = "__engineering-and-magic__/sound/shield-bash.ogg", volume = 0.7 },
        ammo_type =
        {
            category = "warrior",
            energy_consumption = "10kJ",
            action =
            {
                type = "direct",
                action_delivery =
                {
                    type = "instant",
                    target_effects =
                    {
                        {
                            type = "create-sticker",
                            sticker = "stun-sticker"
                        },
                        {
                            type = "push-back",
                            distance = 1.5
                        },
                        {
                            type = "damage",
                            damage = { amount = 6, type = "physical" }
                        }
                    }
                }
            }
        }
    }
}

data:extend({
    magic_missile_rune
})