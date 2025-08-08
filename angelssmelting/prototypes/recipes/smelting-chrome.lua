local AF = angelsmods.functions

data:extend({
  --CHROME
  -- SMELTING INTERMEDIATE
  {
    type = "recipe",
    name = "angels-processed-chrome",
    category = "angels-ore-processing-4",
    subgroup = "angels-chrome",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-chrome-ore", amount = 4 },
    },
    results = {
      { type = "item", name = "angels-processed-chrome", amount = 2 },
    },
    order = "b[processed-chrome]",
    crafting_machine_tint = AF.get_fluid_recipe_tint("angels-liquid-molten-chrome"),
  },
  {
    type = "recipe",
    name = "angels-pellet-chrome",
    category = "angels-pellet-pressing-4",
    subgroup = "angels-chrome",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-processed-chrome", amount = 3 },
    },
    results = {
      { type = "item", name = "angels-pellet-chrome", amount = 4 },
    },
    order = "c[pellet-chrome]",
  },
  {
    type = "recipe",
    name = "angels-solid-chromate",
    category = "angels-blast-smelting-4",
    subgroup = "angels-chrome",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-pellet-chrome", amount = 8 },
      { type = "item", name = "angels-solid-sodium-carbonate", amount = 7 },
      { type = "fluid", name = "angels-gas-oxygen", amount = 60 },
    },
    results = {
      { type = "item", name = "angels-solid-chromate", amount = 24 },
    },
    order = "d[solid-chromate]",
  },
  {
    type = "recipe",
    name = "angels-solid-dichromate",
    category = "angels-liquifying",
    subgroup = "angels-chrome",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-solid-chromate", amount = 12 },
      { type = "fluid", name = "angels-liquid-sulfuric-acid", amount = 40 },
    },
    results = {
      { type = "item", name = "angels-solid-dichromate", amount = 12 },
      { type = "item", name = "angels-solid-sodium-sulfate", amount = 1 },
      { type = "fluid", name = "angels-water-purified", amount = 40 },
    },
    main_product = "angels-solid-dichromate",
    crafting_machine_tint = AF.get_recipe_tints({
      "angels-liquid-molten-chrome",
      "angels-liquid-sulfuric-acid",
      AF.fluid_color("NaSO4"),
      "angels-water-purified",
    }),
    order = "e[solid-dichromate]",
  },
  {
    type = "recipe",
    name = "angels-solid-chrome-oxide",
    category = "angels-chemical-smelting-4",
    subgroup = "angels-chrome",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-solid-dichromate", amount = 24 },
      { type = "item", name = "angels-solid-carbon", amount = 3 },
    },
    results = {
      { type = "item", name = "angels-solid-chrome-oxide", amount = 24 },
      { type = "item", name = "angels-solid-sodium-carbonate", amount = 3 },
      { type = "fluid", name = "angels-gas-carbon-monoxide", amount = 30 },
    },
    main_product = "angels-solid-chrome-oxide",
    order = "f[solid-chrome-oxide]",
  },
  -- SMELTING RESULTS
  {
    type = "recipe",
    name = "angels-ingot-chrome",
    category = "angels-chemical-smelting-3",
    subgroup = "angels-chrome",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-chrome-ore", amount = 24 },
      { type = "item", name = "angels-solid-carbon", amount = 3 },
    },
    results = {
      { type = "item", name = "angels-ingot-chrome", amount = 24 },
      { type = "fluid", name = "angels-gas-carbon-monoxide", amount = 60 },
    },
    main_product = "angels-ingot-chrome",
    icons = AF.add_number_icon_layer(AF.get_object_icons("angels-ingot-chrome"), 1, angelsmods.smelting.number_tint),
    order = "g[ingot-chrome]-a",
  },
  {
    type = "recipe",
    name = "angels-ingot-chrome-2",
    localised_name = { "item-name.angels-ingot-chrome" },
    category = "angels-blast-smelting-4",
    subgroup = "angels-chrome",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-processed-chrome", amount = 8 },
      { type = "item", name = "angels-solid-carbon", amount = 3 },
    },
    results = {
      { type = "item", name = "angels-ingot-chrome", amount = 24 },
      { type = "fluid", name = "angels-gas-carbon-monoxide", amount = 60 },
    },
    main_product = "angels-ingot-chrome",
    icons = AF.add_number_icon_layer(AF.get_object_icons("angels-ingot-chrome"), 2, angelsmods.smelting.number_tint),
    order = "g[ingot-chrome]-b",
  },
  {
    type = "recipe",
    name = "angels-ingot-chrome-3",
    localised_name = { "item-name.angels-ingot-chrome" },
    category = "angels-blast-smelting-4",
    subgroup = "angels-chrome",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-solid-chrome-oxide", amount = 24, ignored_by_stats = 6 },
      { type = "item", name = "angels-ingot-chrome", amount = 6, ignored_by_stats = 6 },
    },
    results = {
      { type = "item", name = "angels-ingot-chrome", amount = 24, ignored_by_productivity = 6, ignored_by_stats = 6 },
      { type = "item", name = "angels-solid-chrome-oxide", amount = 6, ignored_by_productivity = 6, ignored_by_stats = 6 },
    },
    main_product = "angels-ingot-chrome",
    icons = AF.add_number_icon_layer(AF.get_object_icons("angels-ingot-chrome"), 3, angelsmods.smelting.number_tint),
    order = "g[ingot-chrome]-c",
  },
  {
    type = "recipe",
    name = "angels-powder-chrome",
    category = "advanced-crafting",
    subgroup = "angels-chrome",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-ingot-chrome", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-powder-chrome", amount = 1 },
    },
    order = "h[powder-chrome]",
  },
  -- CASTING INTERMEDIATE
  {
    type = "recipe",
    name = "angels-liquid-molten-chrome",
    category = "angels-induction-smelting-4",
    subgroup = "angels-chrome-casting",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-ingot-chrome", amount = 12 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-molten-chrome", amount = 120 },
    },
    order = "i[liquid-molten-chrome]",
    crafting_machine_tint = AF.get_fluid_recipe_tint("angels-liquid-molten-chrome"),
  },
  {
    type = "recipe",
    name = "angels-roll-chrome",
    category = "angels-strand-casting-4",
    subgroup = "angels-chrome-casting",
    enabled = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "angels-liquid-molten-chrome", amount = 80 },
      { type = "fluid", name = "water", amount = 40 },
    },
    results = {
      { type = "item", name = "angels-roll-chrome", amount = 2 },
    },
    icons = AF.add_number_icon_layer(AF.get_object_icons("angels-roll-chrome"), 1, angelsmods.smelting.number_tint),
    order = "j[angels-roll-chrome]-a",
    crafting_machine_tint = AF.get_fluid_recipe_tint("angels-liquid-molten-chrome"),
  },
  {
    type = "recipe",
    name = "angels-roll-chrome-2",
    localised_name = { "item-name.angels-roll-chrome" },
    category = "angels-strand-casting-4",
    subgroup = "angels-chrome-casting",
    enabled = false,
    energy_required = 2,
    ingredients = {
      { type = "fluid", name = "angels-liquid-molten-chrome", amount = 140 },
      { type = "fluid", name = "angels-liquid-coolant", amount = 40, ignored_by_stats = 32 },
    },
    results = {
      { type = "item", name = "angels-roll-chrome", amount = 4 },
      { type = "fluid", name = "angels-liquid-coolant-used", amount = 40, temperature = 300 },
    },
    main_product = "angels-roll-chrome",
    icons = AF.add_number_icon_layer(AF.get_object_icons("angels-roll-chrome"), 2, angelsmods.smelting.number_tint),
    order = "j[angels-roll-chrome]-b",
    crafting_machine_tint = AF.get_fluid_recipe_tint("angels-liquid-molten-chrome"),
  },
  -- CASTING RESULT
  {
    type = "recipe",
    name = "angels-plate-chrome",
    localised_name = { "item-name.angels-plate-chrome" },
    category = "angels-casting-4",
    subgroup = "angels-chrome-casting",
    enabled = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "angels-liquid-molten-chrome", amount = 40 },
    },
    results = {
      { type = "item", name = "angels-plate-chrome", amount = 4 },
    },
    icons = AF.add_icon_layer(
      AF.get_object_icons("angels-plate-chrome"),
      AF.get_object_icons("angels-liquid-molten-chrome"),
      { -10, -10 },
      0.4375
    ),
    order = "k[angels-plate-chrome]-a",
  },
  {
    type = "recipe",
    name = "angels-plate-chrome-2",
    localised_name = { "item-name.angels-plate-chrome" },
    category = "advanced-crafting",
    subgroup = "angels-chrome-casting",
    energy_required = 0.5,
    enabled = false,
    allow_decomposition = false,
    ingredients = {
      { type = "item", name = "angels-roll-chrome", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-plate-chrome", amount = 4 },
    },
    icons = AF.add_icon_layer(
      AF.get_object_icons("angels-plate-chrome"),
      AF.get_object_icons("angels-roll-chrome"),
      { -10, -10 },
      0.4375
    ),
    order = "k[angels-plate-chrome]-b",
  },
})
