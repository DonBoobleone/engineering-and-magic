local item_sounds = require("__base__.prototypes.item_sounds")


local magic_missile_rune = {
    type = "item",
    name = "focus-stone-magic-missile",
    icon = "__engineering-and-magic__/graphics/icons/focus-stone-magic-missile.png",
    icon_size = 64,
    place_as_equipment_result = "focus-stone-magic-missile",
    subgroup = "military-equipment",
    order = "a[focus-stone]-c[magic-missile]",
    inventory_move_sound = item_sounds.electric_large_inventory_move,
    pick_sound = item_sounds.electric_large_inventory_pickup,
    drop_sound = item_sounds.electric_large_inventory_move,
    stack_size = 20
}

local magic_missile_remote =
{
    type = "capsule",
    name = "spell-book-magic-missile",
    icon = "__engineering-and-magic__/graphics/icons/spell-book-magic-missile.png",
    icon_size = 64,
    flags = {"only-in-cursor", "not-stackable", "spawnable"},
    auto_recycle = false,
    capsule_action =
    {
        type = "equipment-remote",
        equipment = "focus-stone-magic-missile"
    },
    subgroup = "spawnables",
    order = "b[active-defense]-b[discharge-defense-equipment]-b[remote]",
    inventory_move_sound = item_sounds.electric_small_inventory_move,
    pick_sound = item_sounds.electric_small_inventory_pickup,
    drop_sound = item_sounds.electric_small_inventory_move,
    stack_size = 1
}

local fus_ro_dah_rune = {
    type = "item",
    name = "focus-stone-fus-ro-dah",
    icon = "__engineering-and-magic__/graphics/equipment/focus-stone-fus-ro-dah.png",
    icon_size = 64,
    placed_as_equipment_result = "focus-stone-fus-ro-dah",
    subgroup = "focus-stone",
    order = "a[focus-stone]-d[fus-ro-dah]",
    stack_size = 20
}
local fus_ro_dah_remote = {
    type = "capsule",
    name = "spell-book-fus-ro-dah",
    icon = "__engineering-and-magic__/graphics/icons/spell-book-fus-ro-dah.png",
    icon_size = 64,
    capsule_action =
    {
        type = "equipment-remote",
        equipment = "focus-stone-fus-ro-dah"
    },
    subgroup = "spell-book",
    order = "d[fus-ro-dah]",
    stack_size = 1
}
local melee =
{
    type = "gun",
    name = "warrior-gauntlet",
    icon = "__engineering-and-magic____/graphics/icons/warrior-gauntlet.png",
    icon_size = 64,
    subgroup = "melee",
    order = "a[warrior]-b[tribal]",
    attack_parameters = {
        type = "projectile",
        ammo_category = "melee",
        cooldown = 25,
        movement_slow_down_factor = 0.3,
        projectile_creation_distance = 0,
        range = 1.5,
        range_mode = "bounding-box-to-bounding-box",
        sound = {
            {
                filename = "__base__/sound/creatures/worm-roar-1.ogg",
                volume = 0.7
            }
        }
    },
    stack_size = 2
    -- damage modifier? how to mark for quality?
}

local sword =
{
    type = "ammo",
    name = "sword",
    icon = "__engineering-and-magic__/graphics/icons/sword.png",
    icon_size = 64,
    ammo_type = {
        category = "melee",
        target_type = "direction",
        action = {
            type = "direct",
            action_delivery = {
                type = "projectile",
                projectile = "sword-swing",
                starting_speed = 1,
                starting_speed_deviation = 0.1,
                direction_deviation = 0.3,
                range_deviation = 0.3,
                max_range = 2
            }
        }
    },
    magazine_size = 200,
    subgroup = "melee",
    order = "d[melee]-a[sword]",
    stack_size = 1
}

local jackhammer =
{
    -- melee ammo_category
    -- mining speed bonus? from script?
}

local magic_missile =
{
    type = "ammo",
    name = "magic-missile-core",
    icon = "__engineering-and-magic__/graphics/icons/magic-missile-core.png",
    icon_size = 64,
    ammo_type = {
        category = "magic",
        target_type = "entity",
        range_modifier = 1,
        action = {
            type = "direct",
            action_delivery = {
                type = "projectile",
                projectile = "magic-missile",
                starting_speed = 0.1,
                source_effects =
                {
                    {
                        type = "script",
                        effect_id = "magic-magic-missile-core-event"
                    }
                }
            }
        }
    },
    magazine_size = 1000,
    subgroup = "spell-core",
    order = "z[explosion-core]",
    stack_size = 1
}

data:extend({
    magic_missile_rune,
    magic_missile_remote
})