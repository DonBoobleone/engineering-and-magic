local magic_missile =
{
    type = "projectile",
    name = "magic-missile",
    flags = { "not-on-map" },
    acceleration = 0.005,
    turn_speed = 0.003,
    turning_speed_increases_exponentially_with_projectile_speed = true,
    action =
    {
        type = "direct",
        action_delivery =
        {
            type = "instant",
            target_effects =
            {
                {
                    type = "create-entity",
                    entity_name = "explosion-hit"
                },
                {
                    type = "damage",
                    damage = { amount = 50, type = "laser" }
                },
            }
        }
    },
    light = { intensity = 0.5, size = 1 },
    animation =
    {
        filename = "__engineering-and-magic__/graphics/projectiles/magic-missile-blue-north.png",
        draw_as_glow = true,
        frame_count = 15,
        line_length = 15,
        width = 97,
        height = 97,
        shift = { 0, 0 },
        priority = "high",
        scale = 0.8
    },
}

local fus_ro_dah =
{
    type = "projectile",
    name = "fus-ro-dah-wave",
    flags = { "not-on-map" },
    acceleration = 0.005,
    turn_speed = 0.003,
    turning_speed_increases_exponentially_with_projectile_speed = true,
    action =
    {
        type = "direct",
        action_delivery =
        {
            type = "instant",
            target_effects =
            {
                {
                    type = "damage",
                    damage = { amount = 10, type = "physical" }
                },
                {
                    type = "push-back",
                    distance = 10
                },
                {
                    type = "create-sticker",
                    sticker = "slowdown-sticker"
                }
            }
        }
    },
    animation =
    {
        {
            filename = "__base__/graphics/entity/smoke/nuke-shockwave-1.png",
            draw_as_glow = true,
            priority = "high",
            flags = { "smoke" },
            line_length = 8,
            width = 66,
            height = 68,
            frame_count = 32,
            animation_speed = 0.5,
            shift = util.by_pixel(-1, 0),
        },
        {
            filename = "__base__/graphics/entity/smoke/nuke-shockwave-2.png",
            draw_as_glow = true,
            priority = "high",
            flags = { "smoke" },
            line_length = 8,
            width = 56,
            height = 64,
            frame_count = 32,
            animation_speed = 0.5,
            shift = util.by_pixel(-1, 0),
        }
    }
}

data:extend({
    magic_missile,
    fus_ro_dah
})