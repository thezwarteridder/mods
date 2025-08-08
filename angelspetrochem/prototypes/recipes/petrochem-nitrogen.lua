local AF = angelsmods.functions
data:extend({
  --NITROGEN
  {
    type = "recipe",
    name = "angels-gas-compressed-air",
    category = "angels-petrochem-air-filtering",
    subgroup = "angels-petrochem-nitrogen",
    energy_required = 6,
    enabled = false,
    ingredients = {},
    results = {
      { type = "fluid", name = "angels-gas-compressed-air", amount = 200 },
    },
    always_show_products = true,
    icons = AF.create_gas_recipe_icon(
      { "angels-gas-compressed-air" },
      { { 180, 180, 225 }, { 150, 150, 187 }, { 120, 120, 150 } }
    ),
    crafting_machine_tint = AF.get_recipe_tints({ "angels-gas-compressed-air" }),
    order = "a",
  },
  {
    type = "recipe",
    name = "angels-air-separation",
    category = "chemistry",
    subgroup = "angels-petrochem-nitrogen",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-gas-compressed-air", amount = 100 },
    },
    results = {
      { type = "fluid", name = "angels-gas-nitrogen", amount = 50 },
      { type = "fluid", name = "angels-gas-oxygen", amount = 50 },
    },
    always_show_products = true,
    icons = AF.create_gas_recipe_icon({
      { "__angelspetrochemgraphics__/graphics/icons/molecules/nitrogen.png", 64 },
      { "__angelspetrochemgraphics__/graphics/icons/molecules/oxygen.png", 72 },
    }, "NNO"),
    crafting_machine_tint = AF.get_recipe_tints({ "angels-gas-nitrogen", "angels-gas-compressed-air", "angels-gas-oxygen" }),
    order = "b[air]-a[separation]",
  },
  {
    type = "recipe",
    name = "angels-solid-sodium-nitrate-processing",
    category = "chemistry",
    subgroup = "angels-petrochem-nitrogen",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-solid-sodium-nitrate", amount = 5 },
      { type = "fluid", name = "angels-gas-compressed-air", amount = 60 },
    },
    results = {
      { type = "fluid", name = "angels-gas-nitrogen-monoxide", amount = 40 },
      { type = "fluid", name = "angels-gas-nitrogen-dioxide", amount = 20 },
    },
    always_show_products = true,
    icons = AF.create_gas_recipe_icon({
      { "__angelspetrochemgraphics__/graphics/icons/molecules/nitric-oxide.png", 72 },
      { "__angelspetrochemgraphics__/graphics/icons/molecules/nitrogen-dioxide.png", 72 },
    }, "NNO"),
    crafting_machine_tint = AF.get_recipe_tints({
      "angels-gas-nitrogen-monoxide",
      "angels-gas-compressed-air",
      "angels-gas-nitrogen-dioxide",
      AF.fluid_color("NaNO3"),
    }),
    order = "b[air]-b[nitrate-processing]",
  },
  {
    type = "recipe",
    name = "angels-gas-nitrogen-monoxide",
    category = "chemistry",
    subgroup = "angels-petrochem-nitrogen",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-gas-ammonia", amount = 60 },
      { type = "fluid", name = "angels-gas-oxygen", amount = 40 },
      { type = "item", name = "angels-catalyst-metal-green", amount = 1 },
    },
    results = {
      { type = "fluid", name = "angels-gas-nitrogen-monoxide", amount = 100 },
      { type = "item", name = "angels-catalyst-metal-carrier", amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1 },
    },
    main_product = "angels-gas-nitrogen-monoxide",
    always_show_products = true,
    icons = AF.create_gas_recipe_icon({
      { "__angelspetrochemgraphics__/graphics/icons/molecules/nitric-oxide.png", 72 },
    }, "NOO"),
    crafting_machine_tint = AF.get_recipe_tints({ "angels-gas-nitrogen-monoxide", "angels-gas-ammonia", "angels-gas-oxygen" }),
    order = "c[gas-nitrogen-dioxide]",
  },
  {
    type = "recipe",
    name = "angels-gas-nitrogen-dioxide",
    category = "chemistry",
    subgroup = "angels-petrochem-nitrogen",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-gas-oxygen", amount = 60 },
      { type = "fluid", name = "angels-gas-nitrogen-monoxide", amount = 40 },
    },
    results = {
      { type = "fluid", name = "angels-gas-nitrogen-dioxide", amount = 100 },
    },
    always_show_products = true,
    icons = AF.create_gas_recipe_icon({
      { "__angelspetrochemgraphics__/graphics/icons/molecules/nitrogen-dioxide.png", 72 },
    }, "NOO"),
    crafting_machine_tint = AF.get_recipe_tints({ "angels-gas-nitrogen-dioxide", "angels-gas-oxygen", "angels-gas-nitrogen-monoxide" }),
    order = "d",
  },
  {
    type = "recipe",
    name = "angels-gas-ammonia",
    category = "chemistry",
    subgroup = "angels-petrochem-nitrogen",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-gas-hydrogen", amount = 50 },
      { type = "fluid", name = "angels-gas-nitrogen", amount = 50 },
      { type = "item", name = "angels-catalyst-metal-red", amount = 1 }, --Fe
    },
    results = {
      { type = "fluid", name = "angels-gas-ammonia", amount = 100 },
      { type = "item", name = "angels-catalyst-metal-carrier", amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1 },
    },
    main_product = "angels-gas-ammonia",
    always_show_products = true,
    icons = AF.create_gas_recipe_icon({
      { "__angelspetrochemgraphics__/graphics/icons/molecules/ammonia.png", 72 },
    }, "NHH"),
    crafting_machine_tint = AF.get_recipe_tints({ "angels-gas-ammonia", "angels-gas-nitrogen", "angels-gas-hydrogen" }),
    order = "e",
  },
  {
    type = "recipe",
    name = "angels-gas-ammonium-chloride",
    category = "chemistry",
    subgroup = "angels-petrochem-nitrogen",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-gas-ammonia", amount = 50 },
      { type = "fluid", name = "angels-gas-hydrogen-chloride", amount = 50 },
    },
    results = {
      { type = "fluid", name = "angels-gas-ammonium-chloride", amount = 100 },
    },
    always_show_products = true,
    icons = AF.create_gas_recipe_icon({
      { "__angelspetrochemgraphics__/graphics/icons/molecules/ammonium-chloride.png", 72 },
    }, "NHCl"),
    crafting_machine_tint = AF.get_recipe_tints({ "angels-gas-ammonium-chloride", "angels-gas-ammonia", "angels-gas-hydrogen-chloride" }),
    order = "f",
  },
  {
    type = "recipe",
    name = "angels-gas-urea",
    category = "chemistry",
    subgroup = "angels-petrochem-nitrogen",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-gas-ammonia", amount = 60 },
      { type = "fluid", name = "angels-gas-carbon-dioxide", amount = 40 },
    },
    results = {
      { type = "fluid", name = "angels-gas-urea", amount = 80 },
      { type = "fluid", name = "angels-water-purified", amount = 20 },
    },
    main_product = "angels-gas-urea",
    always_show_products = true,
    icons = AF.create_gas_recipe_icon({
      { "__angelspetrochemgraphics__/graphics/icons/molecules/urea.png", 72 },
      "angels-water-purified",
    }, "CNO"),
    crafting_machine_tint = AF.get_recipe_tints({ "angels-gas-urea", "angels-gas-ammonia", "angels-water-purified", "angels-gas-carbon-dioxide" }),
    order = "g",
  },
  {
    type = "recipe",
    name = "angels-liquid-nitric-acid",
    category = "chemistry",
    subgroup = "angels-petrochem-nitrogen",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-gas-nitrogen-dioxide", amount = 100 },
      { type = "fluid", name = "angels-water-purified", amount = 50 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-nitric-acid", amount = 50 },
    },
    always_show_products = true,
    icons = AF.create_liquid_recipe_icon(
      {
        { "__angelspetrochemgraphics__/graphics/icons/molecules/nitric-acid.png", 72 },
      },
      "NOH",
      {
        { "__angelspetrochemgraphics__/graphics/icons/molecules/nitrogen-dioxide.png", 72 },
      }
    ),
    crafting_machine_tint = AF.get_recipe_tints({ "angels-liquid-nitric-acid", "angels-gas-nitrogen-dioxide", "angels-water-purified" }),
    order = "h[nitric-acid]-a[water-purified]",
  },
  {
    type = "recipe",
    name = "angels-sodium-nitrate-acid-processing",
    category = "angels-liquifying",
    subgroup = "angels-petrochem-nitrogen",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-solid-sodium-nitrate", amount = 5 },
      { type = "fluid", name = "angels-liquid-sulfuric-acid", amount = 40 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-nitric-acid", amount = 40 },
    },
    always_show_products = true,
    icons = AF.create_liquid_recipe_icon(
      {
        { "__angelspetrochemgraphics__/graphics/icons/molecules/nitric-acid.png", 72 },
      },
      "NOH",
      {
        "angels-solid-sodium-nitrate",
      }
    ),
    crafting_machine_tint = AF.get_recipe_tints({
      "angels-liquid-nitric-acid",
      "angels-liquid-sulfuric-acid",
      AF.fluid_color("NaNO3"),
    }),
    order = "h[nitric-acid]-b[sulfuric-acid]",
  },
  {
    type = "recipe",
    name = "angels-gas-melamine",
    category = "chemistry",
    subgroup = "angels-petrochem-nitrogen",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-gas-urea", amount = 100 },
      { type = "item", name = "angels-catalyst-metal-blue", amount = 1 }, --Pl
    },
    results = {
      { type = "fluid", name = "angels-gas-melamine", amount = 100 },
      { type = "item", name = "angels-catalyst-metal-carrier", amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1 },
    },
    main_product = "angels-gas-melamine",
    always_show_products = true,
    icons = AF.create_gas_recipe_icon({
      { "__angelspetrochemgraphics__/graphics/icons/molecules/melamine.png", 72 },
    }, "CHN"),
    crafting_machine_tint = AF.get_recipe_tints({ "angels-gas-melamine", "angels-gas-urea" }),
    order = "i",
  },
  --ROCKET FUEL
  {
    type = "recipe",
    name = "angels-gas-monochloramine",
    category = "angels-liquifying",
    subgroup = "angels-petrochem-rocket",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-solid-sodium-hypochlorite", amount = 5 },
      { type = "fluid", name = "angels-gas-ammonia", amount = 250 },
    },
    results = {
      { type = "fluid", name = "angels-gas-monochloramine", amount = 50 },
    },
    always_show_products = true,
    icons = AF.create_gas_recipe_icon({
      { "__angelspetrochemgraphics__/graphics/icons/molecules/chloramine.png", 72 },
    }, "NHCl"),
    crafting_machine_tint = AF.get_recipe_tints({ "angels-gas-monochloramine", "angels-gas-ammonia", AF.fluid_color("NaOCl") }),
    order = "a",
  },
  {
    type = "recipe",
    name = "angels-gas-hydrazine",
    category = "chemistry",
    subgroup = "angels-petrochem-rocket",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-gas-monochloramine", amount = 50 },
      { type = "fluid", name = "angels-gas-ammonia", amount = 200 },
      { type = "item", name = "angels-catalyst-metal-blue", amount = 1 },
    },
    results = {
      { type = "fluid", name = "angels-gas-hydrazine", amount = 100 },
      { type = "fluid", name = "angels-gas-hydrogen-chloride", amount = 100 },
      { type = "item", name = "angels-catalyst-metal-carrier", amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1 },
    },
    main_product = "angels-gas-hydrazine",
    always_show_products = true,
    icons = AF.create_gas_recipe_icon({
      { "__angelspetrochemgraphics__/graphics/icons/molecules/hydrazine.png", 72 },
    }, "NHH"),
    crafting_machine_tint = AF.get_recipe_tints({
      "angels-gas-hydrazine",
      "angels-gas-monochloramine",
      "angels-gas-hydrogen-chloride",
      "angels-gas-ammonia",
    }),
    order = "b",
  },
  {
    type = "recipe",
    name = "angels-gas-methylamine",
    category = "chemistry",
    subgroup = "angels-petrochem-rocket",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-gas-methanol", amount = 50 },
      { type = "fluid", name = "angels-gas-ammonia", amount = 250 },
    },
    results = {
      { type = "fluid", name = "angels-gas-methylamine", amount = 200 },
      { type = "fluid", name = "angels-water-purified", amount = 50 },
    },
    main_product = "angels-gas-methylamine",
    always_show_products = true,
    icons = AF.create_gas_recipe_icon({
      { "__angelspetrochemgraphics__/graphics/icons/molecules/methylamine.png", 72 },
      "angels-water-purified",
    }, "CHN"),
    crafting_machine_tint = AF.get_recipe_tints({ "angels-gas-methylamine", "angels-gas-methanol", "angels-water-purified", "angels-gas-ammonia" }),
    order = "c",
  },
  {
    type = "recipe",
    name = "angels-gas-dimethylamine",
    category = "chemistry",
    subgroup = "angels-petrochem-rocket",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-gas-methylamine", amount = 200 },
      { type = "fluid", name = "angels-gas-methanol", amount = 50 },
    },
    results = {
      { type = "fluid", name = "angels-gas-dimethylamine", amount = 200 },
      { type = "fluid", name = "angels-water-purified", amount = 50 },
    },
    main_product = "angels-gas-dimethylamine",
    always_show_products = true,
    icons = AF.create_gas_recipe_icon({
      { "__angelspetrochemgraphics__/graphics/icons/molecules/dimethylamine.png", 72 },
      "angels-water-purified",
    }, "CHN"),
    crafting_machine_tint = AF.get_recipe_tints({
      "angels-gas-dimethylamine",
      "angels-gas-methylamine",
      "angels-water-purified",
      "angels-gas-methanol",
    }),
    order = "d",
  },
  {
    type = "recipe",
    name = "angels-gas-dimethylhydrazine",
    category = "chemistry",
    subgroup = "angels-petrochem-rocket",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-gas-dimethylamine", amount = 200 },
      { type = "fluid", name = "angels-gas-monochloramine", amount = 50 },
    },
    results = {
      { type = "fluid", name = "angels-gas-dimethylhydrazine", amount = 200 },
      { type = "fluid", name = "angels-water-purified", amount = 50 },
    },
    main_product = "angels-gas-dimethylhydrazine",
    always_show_products = true,
    icons = AF.create_gas_recipe_icon({
      { "__angelspetrochemgraphics__/graphics/icons/molecules/dimethylhydrazine.png", 72 },
      "angels-water-purified",
    }, "CHN"),
    crafting_machine_tint = AF.get_recipe_tints({
      "angels-gas-dimethylhydrazine",
      "angels-gas-dimethylamine",
      "angels-water-purified",
      "angels-gas-monochloramine",
    }),
    order = "e",
  },
  {
    type = "recipe",
    name = "angels-gas-dinitrogen-tetroxide",
    category = "chemistry",
    subgroup = "angels-petrochem-rocket",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-gas-nitrogen-dioxide", amount = 100 },
      { type = "item", name = "angels-catalyst-metal-yellow", amount = 1 },
    },
    results = {
      { type = "fluid", name = "angels-gas-dinitrogen-tetroxide", amount = 50 },
      { type = "item", name = "angels-catalyst-metal-carrier", amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1 },
    },
    always_show_products = true,
    main_product = "angels-gas-dinitrogen-tetroxide",
    icons = AF.create_gas_recipe_icon({
      { "__angelspetrochemgraphics__/graphics/icons/molecules/dinitrogen-tetroxide.png", 72 },
    }, "NOO"),
    crafting_machine_tint = AF.get_recipe_tints({ "angels-gas-dinitrogen-tetroxide", "angels-gas-nitrogen-dioxide" }),
    order = "f",
  },
  --SOLID ROCKET FUEL
  {
    type = "recipe",
    name = "angels-solid-ammonium-nitrate",
    category = "chemistry",
    subgroup = "angels-petrochem-rocket",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-gas-ammonia", amount = 100 },
      { type = "fluid", name = "angels-liquid-nitric-acid", amount = 100 },
    },
    results = {
      { type = "item", name = "angels-solid-ammonium-nitrate", amount = 3 },
    },
    icon_size = 32,
    crafting_machine_tint = AF.get_recipe_tints({ AF.fluid_color("NH4NO3"), "angels-gas-ammonia", "angels-liquid-nitric-acid" }),
    order = "g",
  },
  {
    type = "recipe",
    name = "angels-solid-ammonium-perchlorate",
    localised_name = { "item-name.angels-solid-ammonium-perchlorate" },
    category = "chemistry",
    subgroup = "angels-petrochem-rocket",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-gas-ammonia", amount = 100 },
      { type = "fluid", name = "angels-liquid-perchloric-acid", amount = 100 },
    },
    results = {
      { type = "item", name = "angels-solid-ammonium-perchlorate", amount = 3 },
      { type = "item", name = "angels-solid-salt", amount = 1 },
    },
    icon_size = 32,
    main_product = "angels-solid-ammonium-perchlorate",
    crafting_machine_tint = AF.get_recipe_tints({
      AF.fluid_color("NH4O4Cl"),
      "angels-gas-ammonia",
      AF.fluid_color("NaCl"),
      "angels-liquid-perchloric-acid",
    }),
    order = "h",
  },
  --FUEL CAPSULES
  {
    type = "recipe",
    name = "angels-rocket-oxidizer-capsule",
    localised_name = { "item-name.angels-rocket-oxidizer-capsule" },
    category = "chemistry",
    subgroup = "angels-petrochem-fuel",
    energy_required = 4.5,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-liquid-nitric-acid", amount = 10 },
      { type = "fluid", name = "angels-gas-dinitrogen-tetroxide", amount = 10 },
    },
    results = {
      { type = "item", name = "angels-rocket-oxidizer-capsule", amount = 2 },
    },
    icon_size = 32,
    crafting_machine_tint = AF.get_recipe_tints({ "angels-liquid-nitric-acid", "angels-gas-dinitrogen-tetroxide" }),
    order = "ha",
  },
  {
    type = "recipe",
    name = "angels-rocket-fuel-capsule",
    category = "chemistry",
    subgroup = "angels-petrochem-fuel",
    energy_required = 4.5,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-gas-dimethylhydrazine", amount = 30 },
      { type = "fluid", name = "angels-gas-hydrazine", amount = 30 },
    },
    results = {
      { type = "item", name = "angels-rocket-fuel-capsule", amount = 2 },
    },
    icon_size = 32,
    crafting_machine_tint = AF.get_recipe_tints({ "angels-gas-dimethylhydrazine", "angels-gas-hydrazine" }),
    order = "hb",
  },
  --ROCKET BOOSTER
  {
    type = "recipe",
    name = "angels-rocket-booster",
    category = "advanced-crafting",
    subgroup = "angels-petrochem-fuel",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-solid-ammonium-nitrate", amount = 3 },
      { type = "item", name = "pipe", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-rocket-booster", amount = 2 },
    },
    icon_size = 32,
    order = "ia",
  },
  {
    type = "recipe",
    name = "angels-rocket-booster-2",
    localised_name = { "item-name.angels-rocket-booster" },
    category = "advanced-crafting",
    subgroup = "angels-petrochem-fuel",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-solid-ammonium-perchlorate", amount = 3 },
      { type = "item", name = "pipe", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-rocket-booster", amount = 3 },
    },
    icon_size = 32,
    order = "ib",
  },
})
