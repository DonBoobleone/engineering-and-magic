local magic_missile_shortcut = {
    type = "shortcut",
    name = "give-spell-book-magic-missile",
    order = "e[spell-book-magic-missile]",
    action = "spawn-item",
    localised_name = { "shortcut.make-spell-book-magic-missile" },
    associated_control_input = "give-spell-book-magic-missile",
    technology_to_unlock = "focus-stone-magic-missile",
    unavailable_until_unlocked = true,
    item_to_spawn = "spell-book-magic-missile",
    icon = "__engineering-and-magic__/graphics/icons/spell-book-magic-missile.png",
    icon_size = 64,
    small_icon = "__engineering-and-magic__/graphics/icons/spell-book-magic-missilex32.png",
    small_icon_size = 32
}

local magic_missile_custom_input = {
    type = "custom-input",
    name = "give-spell-book-magic-missile",
    key_sequence = "ALT + M",  -- Chosen 'M' for Magic Missile; adjust as needed
    consuming = "game-only",
    item_to_spawn = "spell-book-magic-missile",
    action = "spawn-item"
}

data:extend({
    magic_missile_shortcut,
    magic_missile_custom_input
})