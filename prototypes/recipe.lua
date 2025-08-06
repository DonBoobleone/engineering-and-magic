local magic_missile_runes = {
    type = "recipe",
    name = "focus-stone-magic-missile",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
        { type = "item", name = "processing-unit", amount = 5 },
        { type = "item", name = "steel-plate",     amount = 20 },
        { type = "item", name = "laser-turret",    amount = 10 }
    },
    results = { { type = "item", name = "focus-stone-magic-missile", amount = 1 } }
}

data:extend({
    magic_missile_runes
})