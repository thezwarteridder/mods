local AF = angelsmods.functions

data:extend({
  --CARBON
  --GAS FEED
  {
    type = "recipe",
    name = "angels-gas-separation",
    category = "angels-petrochem-separation",
    subgroup = "angels-petrochem-carbon-gas-feed",
    enabled = false,
    energy_required = 2,
    ingredients = {
      { type = "fluid", name = "angels-gas-natural-1", amount = 100 },
    },
    results = {
      { type = "fluid", name = "angels-gas-raw-1", amount = 60 },
      { type = "fluid", name = "angels-liquid-condensates", amount = 30 },
      { type = "fluid", name = "angels-water-yellow-waste", amount = 10 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_gas_recipe_icon({
      "angels-liquid-condensates",
      "angels-gas-raw-1",
    }, "NgNgNg"),
    crafting_machine_tint = AF.get_recipe_tints({ "angels-gas-raw-1", "angels-gas-natural-1", "angels-water-yellow-waste" }),
    order = "a[gas-separation]",
  },
  {
    type = "recipe",
    name = "angels-gas-refining",
    category = "angels-gas-refining",
    subgroup = "angels-petrochem-carbon-gas-feed",
    energy_required = 6,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-gas-raw-1", amount = 100 },
    },
    results = {
      { type = "fluid", name = "angels-gas-acid", amount = 20 },
      { type = "fluid", name = "angels-liquid-ngl", amount = 80 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_gas_recipe_icon({
      "angels-liquid-ngl",
      "angels-gas-acid",
    }, "NgNgS"),
    crafting_machine_tint = AF.get_recipe_tints({ "angels-gas-acid", "angels-gas-raw-1", "angels-liquid-ngl" }),
    order = "b[gas-refining]",
  },
  {
    type = "recipe",
    name = "angels-gas-fractioning",
    category = "angels-gas-refining",
    subgroup = "angels-petrochem-carbon-gas-feed",
    energy_required = 6,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-liquid-ngl", amount = 100, fluidbox_index = 1 },
    },
    results = {
      { type = "fluid", name = "angels-gas-methane", amount = 50, fluidbox_index = 1 },
      { type = "fluid", name = "angels-gas-ethane", amount = 30, fluidbox_index = 2 },
      { type = "fluid", name = "angels-gas-butane", amount = 20, fluidbox_index = 3 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_gas_recipe_icon({
      { "__angelspetrochemgraphics__/graphics/icons/molecules/butane.png", 72 },
      { "__angelspetrochemgraphics__/graphics/icons/molecules/methane.png", 72 },
      { "__angelspetrochemgraphics__/graphics/icons/molecules/ethane.png", 72 },
    }, "CHH"),
    crafting_machine_tint = AF.get_recipe_tints({ "angels-gas-methane", "angels-liquid-ngl", "angels-gas-butane" }),
    order = "c[gas-fractioning]",
  },
  {
    type = "recipe",
    name = "angels-gas-fractioning-synthesis",
    category = "angels-advanced-gas-refining",
    subgroup = "angels-petrochem-carbon-gas-feed",
    energy_required = 6,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-liquid-ngl", amount = 100 },
      { type = "fluid", name = "angels-gas-synthesis", amount = 50 },
    },
    results = {
      { type = "fluid", name = "angels-gas-methane", amount = 90 },
      { type = "fluid", name = "angels-gas-ethane", amount = 30 },
      { type = "fluid", name = "angels-gas-butane", amount = 20 },
      { type = "fluid", name = "angels-gas-carbon-monoxide", amount = 10 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_gas_recipe_icon(
      {
        { "__angelspetrochemgraphics__/graphics/icons/molecules/butane.png", 72 },
        { "__angelspetrochemgraphics__/graphics/icons/molecules/methane.png", 72 },
        { "__angelspetrochemgraphics__/graphics/icons/molecules/ethane.png", 72 },
      },
      "CHH",
      {
        "angels-gas-synthesis",
      }
    ),
    crafting_machine_tint = AF.get_recipe_tints({ "angels-gas-methane", "angels-liquid-ngl", "angels-gas-carbon-monoxide", "angels-gas-synthesis" }),
    order = "d",
  },
  {
    type = "recipe",
    name = "angels-gas-fractioning-condensates",
    category = "angels-advanced-gas-refining",
    subgroup = "angels-petrochem-carbon-gas-feed",
    energy_required = 6,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-liquid-ngl", amount = 100 },
      { type = "fluid", name = "angels-liquid-condensates", amount = 50 },
    },
    results = {
      { type = "fluid", name = "angels-gas-methane", amount = 30 },
      { type = "fluid", name = "angels-gas-ethane", amount = 30 },
      { type = "fluid", name = "angels-gas-butane", amount = 70 },
      { type = "fluid", name = "angels-liquid-naphtha", amount = 20 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_gas_recipe_icon(
      {
        { "__angelspetrochemgraphics__/graphics/icons/molecules/butane.png", 72 },
        { "__angelspetrochemgraphics__/graphics/icons/molecules/methane.png", 72 },
        { "__angelspetrochemgraphics__/graphics/icons/molecules/ethane.png", 72 },
      },
      "CHH",
      {
        "angels-liquid-condensates",
      }
    ),
    crafting_machine_tint = AF.get_recipe_tints({ "angels-gas-ethane", "angels-liquid-ngl", "angels-liquid-naphtha", "angels-liquid-condensates" }),
    order = "e",
  },
  {
    type = "recipe",
    name = "angels-gas-fractioning-residual",
    category = "angels-advanced-gas-refining",
    subgroup = "angels-petrochem-carbon-gas-feed",
    energy_required = 6,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-liquid-ngl", amount = 100 },
      { type = "fluid", name = "angels-gas-residual", amount = 50 },
    },
    results = {
      { type = "fluid", name = "angels-gas-methane", amount = 40 },
      { type = "fluid", name = "angels-gas-ethane", amount = 40 },
      { type = "fluid", name = "angels-gas-butane", amount = 50 },
      { type = "fluid", name = "angels-liquid-toluene", amount = 20 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_gas_recipe_icon(
      {
        { "__angelspetrochemgraphics__/graphics/icons/molecules/butane.png", 72 },
        { "__angelspetrochemgraphics__/graphics/icons/molecules/methane.png", 72 },
        { "__angelspetrochemgraphics__/graphics/icons/molecules/ethane.png", 72 },
      },
      "CHH",
      {
        "angels-gas-residual",
      }
    ),
    crafting_machine_tint = AF.get_recipe_tints({ "angels-gas-residual", "angels-gas-ethane", "angels-gas-residual", "angels-liquid-toluene" }),
    order = "f",
  },
  {
    type = "recipe",
    name = "angels-condensates-refining",
    category = "angels-advanced-chemistry",
    subgroup = "angels-petrochem-carbon-gas-feed",
    energy_required = 6,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-liquid-condensates", amount = 60 },
      { type = "fluid", name = "angels-thermal-water", amount = 20 },
      { type = "fluid", name = "angels-gas-carbon-monoxide", amount = 20 },
    },
    results = {
      { type = "item", name = "angels-solid-coke", amount = 2 },
      { type = "fluid", name = "angels-liquid-naphtha", amount = 50 },
      { type = "fluid", name = "angels-gas-methane", amount = 30 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_gas_recipe_icon({
      { "__angelspetrochemgraphics__/graphics/icons/molecules/methane.png", 72 },
      "angels-liquid-naphtha",
    }, "CHH"),
    crafting_machine_tint = AF.get_recipe_tints({
      "angels-liquid-naphtha",
      "angels-thermal-water",
      "angels-gas-methane",
      AF.fluid_color("Cb"--[[coke]]),
    }),
    order = "g",
  },
  --OIL FEED
  {
    type = "recipe",
    name = "angels-oil-separation",
    category = "angels-petrochem-separation",
    subgroup = "angels-petrochem-carbon-oil-feed",
    enabled = false,
    energy_required = 2,
    always_show_products = true,
    ingredients = {
      { type = "fluid", name = "angels-liquid-multi-phase-oil", amount = 100 },
    },
    results = {
      { type = "fluid", name = "angels-gas-raw-1", amount = 20 },
      { type = "fluid", name = "crude-oil", amount = 70 },
      { type = "fluid", name = "angels-water-yellow-waste", amount = 10 },
    },
    icons = angelsmods.functions.create_liquid_recipe_icon({
      "crude-oil",
      "angels-gas-raw-1",
    }, { { 100, 100, 100 }, { 171, 161, 055 }, { 127, 163, 109 } }),
    crafting_machine_tint = AF.get_recipe_tints({
      "angels-gas-raw-1",
      "angels-liquid-multi-phase-oil",
      "crude-oil",
      "angels-water-yellow-waste",
    }),
    order = "a[oil-separation]",
  },
  {
    type = "recipe",
    name = "angels-oil-refining",
    category = "oil-processing",
    subgroup = "angels-petrochem-carbon-oil-feed",
    enabled = false,
    energy_required = 6,
    ingredients = {
      { type = "fluid", name = "crude-oil", amount = 100, fluidbox_index = 1 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-mineral-oil", amount = 20 },
      { type = "fluid", name = "angels-liquid-fuel-oil", amount = 30 },
      { type = "fluid", name = "angels-liquid-naphtha", amount = 50 },
      { type = "item", name = "angels-solid-oil-residual", amount = 1 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_liquid_recipe_icon({
      "angels-liquid-naphtha",
      "angels-liquid-mineral-oil",
      "angels-liquid-fuel-oil",
    }, "OiOiOi"),
    crafting_machine_tint = AF.get_recipe_tints({
      "angels-liquid-naphtha",
      "crude-oil",
      "angels-liquid-fuel-oil",
      "angels-liquid-mineral-oil",
    }),
    order = "b[oil-refining]",
  },
  {
    type = "recipe",
    name = "angels-advanced-oil-refining",
    category = "oil-processing",
    subgroup = "angels-petrochem-carbon-oil-feed",
    enabled = false,
    energy_required = 6,
    ingredients = {
      { type = "fluid", name = "crude-oil", amount = 90 },
      { type = "fluid", name = "angels-gas-hydrogen", amount = 20 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-mineral-oil", amount = 20 },
      { type = "fluid", name = "angels-liquid-fuel-oil", amount = 20 },
      { type = "fluid", name = "angels-liquid-naphtha", amount = 70 },
      { type = "item", name = "angels-solid-oil-residual", amount = 1 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_liquid_recipe_icon(
      {
        "angels-liquid-naphtha",
        "angels-liquid-mineral-oil",
        "angels-liquid-fuel-oil",
      },
      "OiOiOi",
      {
        { "__angelspetrochemgraphics__/graphics/icons/molecules/hydrogen.png", 72 },
      }
    ),
    crafting_machine_tint = AF.get_recipe_tints({
      "angels-liquid-naphtha",
      "crude-oil",
      "angels-liquid-mineral-oil",
      "hydrogen",
      "angels-liquid-fuel-oil",
    }),
    order = "c[advanced-oil-refining]",
  },
  {
    type = "recipe",
    name = "angels-condensates-oil-refining",
    category = "oil-processing",
    subgroup = "angels-petrochem-carbon-oil-feed",
    enabled = false,
    energy_required = 6,
    ingredients = {
      { type = "fluid", name = "crude-oil", amount = 40 },
      { type = "fluid", name = "angels-liquid-condensates", amount = 60 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-mineral-oil", amount = 40 },
      { type = "fluid", name = "angels-liquid-fuel-oil", amount = 30 },
      { type = "fluid", name = "angels-liquid-naphtha", amount = 30 },
      { type = "item", name = "angels-solid-oil-residual", amount = 1 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_liquid_recipe_icon(
      {
        "angels-liquid-naphtha",
        "angels-liquid-mineral-oil",
        "angels-liquid-fuel-oil",
      },
      "OiOiOi",
      {
        "angels-liquid-condensates",
      }
    ),
    crafting_machine_tint = AF.get_recipe_tints({
      "angels-liquid-mineral-oil",
      "crude-oil",
      "angels-liquid-naphtha",
      "angels-liquid-condensates",
      "angels-liquid-fuel-oil",
    }),
    order = "d[condensates-oil-refining]",
  },
  {
    type = "recipe",
    name = "angels-residual-oil-refining",
    category = "oil-processing",
    subgroup = "angels-petrochem-carbon-oil-feed",
    enabled = false,
    energy_required = 6,
    ingredients = {
      { type = "fluid", name = "crude-oil", amount = 60 },
      { type = "fluid", name = "angels-gas-residual", amount = 40 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-mineral-oil", amount = 60 },
      { type = "fluid", name = "angels-liquid-fuel-oil", amount = 30 },
      { type = "fluid", name = "angels-liquid-naphtha", amount = 10 },
      { type = "item", name = "angels-solid-oil-residual", amount = 1 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_liquid_recipe_icon(
      {
        "angels-liquid-naphtha",
        "angels-liquid-mineral-oil",
        "angels-liquid-fuel-oil",
      },
      "OiOiOi",
      {
        "angels-gas-residual",
      }
    ),
    crafting_machine_tint = AF.get_recipe_tints({
      "angels-liquid-mineral-oil",
      "crude-oil",
      "angels-liquid-fuel-oil",
      "angels-gas-residual",
      "angels-liquid-naphtha",
    }),
    order = "e",
  },
  {
    type = "recipe",
    name = "angels-steam-cracking-naphtha",
    category = "angels-steam-cracking",
    subgroup = "angels-petrochem-cracking",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-liquid-naphtha", amount = 100 },
      { type = "fluid", name = "steam", amount = 100 },
    },
    results = {
      { type = "fluid", name = "angels-gas-synthesis", amount = 150 },
      { type = "fluid", name = "angels-gas-residual", amount = 10 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_liquid_recipe_icon({
      "angels-gas-synthesis",
    }, { { 196, 075, 085 }, { 170, 071, 081 }, { 148, 066, 075 } }),
    crafting_machine_tint = AF.get_recipe_tints({ "angels-gas-synthesis", "angels-liquid-naphtha", "angels-gas-residual", "steam" }),
    order = "e[steam-cracking-naphtha]",
  },
  {
    type = "recipe",
    name = "angels-liquid-mineral-oil-catalyst",
    category = "angels-advanced-chemistry",
    subgroup = "angels-petrochem-carbon-oil-feed",
    energy_required = 6,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-liquid-naphtha", amount = 60 },
      { type = "fluid", name = "angels-thermal-water", amount = 20 },
      { type = "fluid", name = "angels-gas-carbon-monoxide", amount = 20 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-mineral-oil", amount = 100 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_liquid_recipe_icon({
      "angels-liquid-mineral-oil",
    }, {
      { 192, 096, 096 },
      { 243, 135, 000 },--[[{089, 102, 157}]]
      { 036, 036, 036 },
    }),
    crafting_machine_tint = AF.get_recipe_tints({
      "angels-liquid-mineral-oil",
      "angels-liquid-naphtha",
      "angels-thermal-water",
      "angels-gas-carbon-monoxide",
    }),
    order = "f",
  },
  {
    type = "recipe",
    name = "angels-steam-cracking-mineral-oil",
    category = "angels-steam-cracking",
    subgroup = "angels-petrochem-cracking",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-liquid-mineral-oil", amount = 100 },
      { type = "fluid", name = "steam", amount = 100 },
    },
    results = {
      { type = "fluid", name = "angels-gas-synthesis", amount = 100 },
      { type = "fluid", name = "angels-gas-residual", amount = 10 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_liquid_recipe_icon({
      "angels-gas-synthesis",
    }, { { 063, 189, 063 }, { 058, 173, 58 }, { 053, 159, 053 } }),
    crafting_machine_tint = AF.get_recipe_tints({ "angels-liquid-mineral-oil", "angels-gas-synthesis", "steam", "angels-gas-residual" }),
    order = "f[catalyst-steam-cracking-mineral-oil]",
  },
  {
    type = "recipe",
    name = "angels-steam-cracking-fuel-oil",
    category = "angels-steam-cracking",
    subgroup = "angels-petrochem-cracking",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-liquid-fuel-oil", amount = 100 },
      { type = "fluid", name = "steam", amount = 100 },
    },
    results = {
      { type = "fluid", name = "angels-gas-synthesis", amount = 100 },
      { type = "fluid", name = "angels-gas-residual", amount = 10 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_liquid_recipe_icon({
      "angels-gas-synthesis",
    }, { { 237, 212, 104 }, { 239, 210, 093 }, { 247, 216, 081 } }),
    crafting_machine_tint = AF.get_recipe_tints({ "angels-gas-synthesis", "angels-liquid-fuel-oil", "angels-gas-residual", "steam" }),
    order = "g[catalyst-steam-cracking-fuel-oil]",
  },
  {
    type = "recipe",
    name = "angels-mineral-oil-lubricant",
    category = "chemistry",
    subgroup = "angels-petrochem-carbon-oil-feed",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-liquid-mineral-oil", amount = 40 },
      { type = "fluid", name = "angels-gas-residual", amount = 10 },
    },
    results = {
      { type = "fluid", name = "lubricant", amount = 50 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_liquid_recipe_icon({
      "lubricant",
    }, { { 063, 189, 063 }, { 058, 173, 58 }, { 053, 159, 053 } }),
    crafting_machine_tint = AF.get_recipe_tints({ "lubricant", "angels-liquid-mineral-oil", "angels-gas-residual" }),
    order = "g",
  },
  --SYNTHESIS
  {
    type = "recipe",
    name = "angels-gas-synthesis-separation",
    category = "chemistry",
    subgroup = "angels-petrochem-carbon-synthesis",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-gas-synthesis", amount = 100 },
    },
    results = {
      { type = "fluid", name = "angels-gas-carbon-monoxide", amount = 40 },
      { type = "fluid", name = "angels-gas-hydrogen", amount = 60 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_gas_recipe_icon({
      { "__angelspetrochemgraphics__/graphics/icons/molecules/hydrogen.png", 72 },
      { "__angelspetrochemgraphics__/graphics/icons/molecules/carbon-monoxide.png", 72 },
    }, { { 210, 120, 210 }, { 175, 100, 175 }, { 140, 080, 140 } }),
    crafting_machine_tint = AF.get_recipe_tints({ "angels-gas-hydrogen", "angels-gas-synthesis", "angels-gas-carbon-monoxide" }),
    order = "a[gas-synthesis-separation]",
  },
  {
    type = "recipe",
    name = "angels-gas-synthesis-reforming",
    localised_name = { "fluid-name.angels-gas-synthesis" },
    category = "chemistry",
    subgroup = "angels-petrochem-carbon-synthesis",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-gas-carbon-monoxide", amount = 60 },
      { type = "fluid", name = "angels-gas-hydrogen", amount = 90 },
    },
    results = {
      { type = "fluid", name = "angels-gas-synthesis", amount = 100 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_gas_recipe_icon({
      "angels-gas-synthesis",
    }, { { 210, 120, 210 }, { 175, 100, 175 }, { 140, 080, 140 } }),
    crafting_machine_tint = AF.get_recipe_tints({ "angels-gas-synthesis", "angels-gas-carbon-monoxide", "angels-gas-hydrogen" }),
    order = "b[gas-synthesis-reforming]",
  },
  {
    type = "recipe",
    name = "angels-gas-synthesis-methanation",
    category = "angels-advanced-chemistry",
    subgroup = "angels-petrochem-carbon-synthesis",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-gas-synthesis", amount = 100 },
      { type = "fluid", name = "angels-gas-hydrogen", amount = 40 },
      { type = "item", name = "angels-catalyst-metal-blue", amount = 1 }, --Co
    },
    results = {
      { type = "fluid", name = "angels-gas-methane", amount = 60 },
      { type = "fluid", name = "angels-gas-ethane", amount = 20 },
      { type = "fluid", name = "angels-gas-butane", amount = 20 },
      { type = "item", name = "angels-catalyst-metal-carrier", amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_gas_recipe_icon({
      { "__angelspetrochemgraphics__/graphics/icons/molecules/methane.png", 72 },
      { "__angelspetrochemgraphics__/graphics/icons/molecules/butane.png", 72 },
      { "__angelspetrochemgraphics__/graphics/icons/molecules/ethane.png", 72 },
    }, { { 210, 120, 210 }, { 175, 100, 175 }, { 140, 080, 140 } }),
    crafting_machine_tint = AF.get_recipe_tints({ "angels-gas-methane", "angels-gas-synthesis", "angels-gas-butane", "angels-gas-hydrogen" }),
    order = "c[gas-synthesis-methanation]",
  },
  {
    type = "recipe",
    name = "angels-liquid-naphtha-catalyst",
    category = "chemistry",
    subgroup = "angels-petrochem-carbon-synthesis",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-gas-synthesis", amount = 150 },
      { type = "fluid", name = "angels-gas-carbon-monoxide", amount = 50 },
      { type = "item", name = "angels-catalyst-metal-red", amount = 1 }, --Fe
    },
    results = {
      { type = "fluid", name = "angels-liquid-naphtha", amount = 100 },
      { type = "item", name = "angels-catalyst-metal-carrier", amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_gas_recipe_icon({
      "angels-liquid-naphtha",
    }, { { 210, 120, 210 }, { 175, 100, 175 }, { 140, 080, 140 } }),
    crafting_machine_tint = AF.get_recipe_tints({ "angels-liquid-naphtha", "angels-gas-synthesis", "angels-gas-carbon-monoxide" }),
    order = "d[liquid-mineral-oil-catalyst]",
  },
  {
    type = "recipe",
    name = "angels-gas-synthesis-methanol",
    category = "chemistry",
    subgroup = "angels-petrochem-carbon-synthesis",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-gas-synthesis", amount = 100 },
      { type = "fluid", name = "angels-gas-carbon-dioxide", amount = 40 },
      { type = "item", name = "angels-catalyst-metal-green", amount = 1 }, --Zn and Al
    },
    results = {
      { type = "fluid", name = "angels-water-purified", amount = 20 },
      { type = "fluid", name = "angels-gas-methanol", amount = 80 },
      { type = "item", name = "angels-catalyst-metal-carrier", amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_gas_recipe_icon({
      { "__angelspetrochemgraphics__/graphics/icons/molecules/methanol.png", 72 },
    }, { { 210, 120, 210 }, { 175, 100, 175 }, { 140, 080, 140 } }),
    crafting_machine_tint = AF.get_recipe_tints({
      "angels-gas-methanol",
      "angels-gas-synthesis",
      "angels-water-purified",
      "angels-gas-carbon-monoxide",
    }),
    order = "e[gas-synthesis-methanol]",
  },
  {
    type = "recipe",
    name = "angels-steam-cracking-gas-residual",
    localised_name = { "fluid-name.angels-gas-synthesis" },
    category = "angels-steam-cracking",
    subgroup = "angels-petrochem-carbon-synthesis",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-gas-residual", amount = 100 },
      { type = "fluid", name = "steam", amount = 100 },
    },
    results = {
      { type = "fluid", name = "angels-gas-synthesis", amount = 150 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_gas_recipe_icon({
      "angels-gas-synthesis",
    }, { { 064, 000, 064 }, { 128, 000, 128 }, { 192, 000, 192 } }),
    crafting_machine_tint = AF.get_recipe_tints({ "angels-gas-synthesis", "angels-gas-residual", "steam" }),
    order = "f[steam-cracking-gas-residual]",
  },
  {
    type = "recipe",
    name = "angels-steam-cracking-oil-residual",
    localised_name = { "fluid-name.angels-gas-residual" },
    category = "angels-steam-cracking",
    subgroup = "angels-petrochem-carbon-synthesis",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-solid-oil-residual", amount = 10 },
      { type = "fluid", name = "steam", amount = 100 },
    },
    results = {
      { type = "fluid", name = "angels-gas-residual", amount = 100 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_gas_recipe_icon({
      "angels-gas-residual",
    }, { { 064, 000, 064 }, { 128, 000, 128 }, { 192, 000, 192 } }),
    crafting_machine_tint = AF.get_recipe_tints({ "angels-gas-residual", "steam" }),
    order = "g[steam-cracking-oil-residual]",
  },
  --STEAM CRACKING
  {
    type = "recipe",
    name = "angels-steam-cracking-methane",
    category = "angels-steam-cracking",
    subgroup = "angels-petrochem-cracking",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-gas-methane", amount = 60 },
      { type = "fluid", name = "steam", amount = 60 },
    },
    results = {
      { type = "fluid", name = "angels-gas-methanol", amount = 80 },
      { type = "fluid", name = "angels-gas-residual", amount = 20 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_gas_recipe_icon({
      { "__angelspetrochemgraphics__/graphics/icons/molecules/methanol.png", 72 },
    }, "CHWs"),
    crafting_machine_tint = AF.get_recipe_tints({ "angels-gas-methanol", "angels-gas-methane", "angels-gas-residual", "steam" }),
    order = "a[steam-cracking-methane]",
  },
  {
    type = "recipe",
    name = "angels-gas-ethylene",
    localised_name = { "recipe-name.angels-gas-ethylene" },
    category = "angels-steam-cracking",
    subgroup = "angels-petrochem-cracking",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-gas-ethane", amount = 60 },
      { type = "fluid", name = "steam", amount = 60 },
    },
    results = {
      { type = "fluid", name = "angels-gas-ethylene", amount = 80 },
      { type = "fluid", name = "angels-gas-residual", amount = 20 },
    },
    main_product = "angels-gas-ethylene",
    always_show_products = true,
    icons = angelsmods.functions.create_gas_recipe_icon({
      { "__angelspetrochemgraphics__/graphics/icons/molecules/ethylene.png", 72 },
    }, "CHWs"),
    crafting_machine_tint = AF.get_recipe_tints({ "angels-gas-ethylene", "angels-gas-ethane", "angels-gas-residual", "steam" }),
    order = "b[gas-ethylene]",
  },
  {
    type = "recipe",
    name = "angels-steam-cracking-butane",
    category = "angels-steam-cracking",
    subgroup = "angels-petrochem-cracking",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-gas-butane", amount = 60 },
      { type = "fluid", name = "steam", amount = 60 },
    },
    results = {
      { type = "fluid", name = "angels-gas-benzene", amount = 80 },
      { type = "fluid", name = "angels-gas-residual", amount = 20 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_gas_recipe_icon({
      { "__angelspetrochemgraphics__/graphics/icons/molecules/benzene.png", 72 },
    }, "CHWs"),
    crafting_machine_tint = AF.get_recipe_tints({ "angels-gas-benzene", "angels-gas-butane", "angels-gas-residual", "steam" }),
    order = "c[steam-cracking-butane]",
  },
  {
    type = "recipe",
    name = "angels-gas-butadiene",
    localised_name = { "recipe-name.angels-gas-butadiene" },
    category = "angels-steam-cracking",
    subgroup = "angels-petrochem-cracking",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-liquid-naphtha", amount = 60 },
      { type = "fluid", name = "steam", amount = 60 },
      { type = "item", name = "angels-catalyst-metal-green", amount = 1 }, --Ag
    },
    results = {
      { type = "fluid", name = "angels-gas-butadiene", amount = 80 },
      { type = "fluid", name = "angels-gas-residual", amount = 20 },
      { type = "item", name = "angels-catalyst-metal-carrier", amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1 },
    },
    main_product = "angels-gas-butadiene",
    always_show_products = true,
    icons = angelsmods.functions.create_gas_recipe_icon({
      { "__angelspetrochemgraphics__/graphics/icons/molecules/butadiene.png", 72 },
    }, "CHWs"),
    crafting_machine_tint = AF.get_recipe_tints({ "angels-gas-butadiene", "angels-liquid-naphtha", "angels-gas-residual", "steam" }),
    order = "d[gas-butadiene]",
  },
  {
    type = "recipe",
    name = "angels-catalyst-steam-cracking-naphtha",
    category = "angels-steam-cracking",
    subgroup = "angels-petrochem-cracking",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-liquid-naphtha", amount = 100 },
      { type = "fluid", name = "steam", amount = 100 },
      { type = "item", name = "angels-catalyst-metal-red", amount = 1 }, --Fe
    },
    results = {
      { type = "fluid", name = "angels-gas-propene", amount = 100 },
      { type = "item", name = "angels-catalyst-metal-carrier", amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_liquid_recipe_icon({
      { "__angelspetrochemgraphics__/graphics/icons/molecules/propene.png", 72 },
    }, { { 196, 075, 085 }, { 170, 071, 081 }, { 148, 066, 075 } }),
    crafting_machine_tint = AF.get_recipe_tints({ "angels-gas-propene", "angels-liquid-naphtha", "steam" }),
    order = "e[catalyst-steam-cracking-naphtha]",
  },
  --CHEMISTRY
  {
    type = "recipe",
    name = "angels-gas-benzene",
    localised_name = { "recipe-name.angels-gas-benzene" },
    category = "chemistry",
    subgroup = "angels-petrochem-feedstock",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-gas-methane", amount = 100 },
      { type = "item", name = "angels-catalyst-metal-green", amount = 1 },
    },
    results = {
      { type = "fluid", name = "angels-gas-benzene", amount = 100 },
      { type = "item", name = "angels-catalyst-metal-carrier", amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1 },
    },
    main_product = "angels-gas-benzene",
    always_show_products = true,
    icons = angelsmods.functions.create_gas_recipe_icon({
      { "__angelspetrochemgraphics__/graphics/icons/molecules/benzene.png", 72 },
    }, "CHH"),
    crafting_machine_tint = AF.get_recipe_tints({ "angels-gas-benzene", "angels-gas-methane" }),
    order = "d[gas-benzene]",
  },
  {
    type = "recipe",
    name = "angels-liquid-polyethylene",
    localised_name = { "recipe-name.angels-liquid-polyethylene" },
    category = "chemistry",
    subgroup = "angels-petrochem-feedstock",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-gas-ethylene", amount = 100 },
      { type = "item", name = "angels-catalyst-metal-blue", amount = 1 }, --Ti OR Cr
    },
    results = {
      { type = "fluid", name = "angels-liquid-polyethylene", amount = 50 },
      { type = "item", name = "angels-catalyst-metal-carrier", amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1 },
    },
    main_product = "angels-liquid-polyethylene",
    always_show_products = true,
    icons = angelsmods.functions.create_gas_recipe_icon({
      {
        icon = "__angelspetrochemgraphics__/graphics/icons/molecules/polyethylene.png",
        icon_size = 72,
        shift = { 11.5 * 32 / 10.24, 0 },
        scale = 32 / 10.24,
        floating = true,
      },
    }, "CHH"),
    crafting_machine_tint = AF.get_recipe_tints({ "angels-liquid-polyethylene", "angels-gas-ethylene" }),
    order = "c[liquid-polyethylene]",
  },
  {
    type = "recipe",
    name = "angels-gas-methanol",
    localised_name = { "recipe-name.angels-gas-methanol" },
    category = "chemistry",
    subgroup = "angels-petrochem-feedstock",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-gas-carbon-dioxide", amount = 100 },
      { type = "fluid", name = "angels-gas-hydrogen", amount = 100 },
      { type = "item", name = "angels-catalyst-metal-green", amount = 1 }, --Zinc, Copper, Aluminium
    },
    results = {
      { type = "fluid", name = "angels-gas-methanol", amount = 100 },
      { type = "item", name = "angels-catalyst-metal-carrier", amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1 },
    },
    main_product = "angels-gas-methanol",
    always_show_products = true,
    icons = angelsmods.functions.create_gas_recipe_icon({
      { "__angelspetrochemgraphics__/graphics/icons/molecules/methanol.png", 72 },
    }, "COH"),
    crafting_machine_tint = AF.get_recipe_tints({ "angels-gas-methanol", "angels-gas-carbon-dioxide", "angels-gas-hydrogen" }),
    order = "a[gas-methanol-catalyst]",
  },
  {
    type = "recipe",
    name = "angels-gas-ethylene-oxide",
    category = "chemistry",
    subgroup = "angels-petrochem-feedstock",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-gas-ethylene", amount = 100 },
      { type = "fluid", name = "angels-gas-oxygen", amount = 50 },
      { type = "item", name = "angels-catalyst-metal-green", amount = 1 },
    },
    results = {
      { type = "fluid", name = "angels-gas-ethylene-oxide", amount = 100 },
      { type = "item", name = "angels-catalyst-metal-carrier", amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_gas_recipe_icon({
      { "__angelspetrochemgraphics__/graphics/icons/molecules/ethylene-oxide.png", 72 },
    }, "COH"),
    crafting_machine_tint = AF.get_recipe_tints({ "angels-gas-ethylene-oxide", "angels-gas-ethylene", "angels-gas-oxygen" }),
    order = "b[gas-ethylene-oxide-catalyst]",
  },
  {
    type = "recipe",
    name = "angels-liquid-toluene",
    localised_name = { "recipe-name.angels-liquid-toluene" },
    category = "chemistry",
    subgroup = "angels-petrochem-feedstock",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-liquid-naphtha", amount = 100 },
      { type = "fluid", name = "angels-gas-hydrogen", amount = 100 },
      { type = "item", name = "angels-catalyst-metal-green", amount = 1 }, --Aluminium
    },
    results = {
      { type = "fluid", name = "angels-liquid-toluene", amount = 100 },
      { type = "item", name = "angels-catalyst-metal-carrier", amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1 },
    },
    main_product = "angels-liquid-toluene",
    always_show_products = true,
    icons = angelsmods.functions.create_liquid_recipe_icon({
      "angels-liquid-toluene",
    }, { { 196, 075, 085 }, { 170, 071, 081 }, { 148, 066, 075 } }),
    crafting_machine_tint = AF.get_recipe_tints({ "angels-liquid-toluene", "angels-liquid-naphtha", "angels-gas-hydrogen" }),
    order = "e[toluene]-a",
  },
  {
    type = "recipe",
    name = "angels-liquid-toluene-from-benzene",
    category = "chemistry",
    subgroup = "angels-petrochem-feedstock",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-gas-benzene", amount = 100 },
      { type = "fluid", name = "angels-gas-chlor-methane", amount = 50 },
      { type = "item", name = "angels-catalyst-metal-green", amount = 1 }, --Aluminium
    },
    results = {
      { type = "fluid", name = "angels-liquid-toluene", amount = 100 },
      { type = "fluid", name = "angels-gas-hydrogen-chloride", amount = 50 },
      { type = "item", name = "angels-catalyst-metal-carrier", amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_gas_recipe_icon({
      "angels-liquid-toluene",
    }, "CHH"),
    crafting_machine_tint = AF.get_recipe_tints({
      "angels-liquid-toluene",
      "angels-gas-benzene",
      "angels-gas-hydrogen-chloride",
      "angels-gas-chlor-methane",
    }),
    order = "e[toluene]-b",
  },
  {
    type = "recipe",
    name = "angels-gas-formaldehyde",
    localised_name = { "recipe-name.angels-gas-formaldehyde" },
    category = "chemistry",
    subgroup = "angels-petrochem-chemistry",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-gas-methanol", amount = 100 },
      { type = "item", name = "angels-catalyst-metal-green", amount = 1 }, --Ag, Or FeO & Mo and/or V
    },
    results = {
      { type = "fluid", name = "angels-gas-formaldehyde", amount = 100 },
      { type = "item", name = "angels-catalyst-metal-carrier", amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1 },
    },
    main_product = "angels-gas-formaldehyde",
    always_show_products = true,
    icons = angelsmods.functions.create_gas_recipe_icon({
      { "__angelspetrochemgraphics__/graphics/icons/molecules/formaldehyde.png", 72 },
    }, "COH"),
    crafting_machine_tint = AF.get_recipe_tints({ "angels-gas-formaldehyde", "angels-gas-methanol" }),
    order = "a[gas-formaldehyde-catalyst]",
  },
  {
    type = "recipe",
    name = "angels-liquid-styrene",
    localised_name = { "recipe-name.angels-liquid-styrene" },
    category = "chemistry",
    subgroup = "angels-petrochem-chemistry",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-liquid-ethylbenzene", amount = 100 },
      { type = "item", name = "angels-catalyst-metal-green", amount = 1 }, --Fe
    },
    results = {
      { type = "fluid", name = "angels-liquid-styrene", amount = 50 },
      { type = "item", name = "angels-catalyst-metal-carrier", amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1 },
    },
    main_product = "angels-liquid-styrene",
    always_show_products = true,
    icons = angelsmods.functions.create_liquid_recipe_icon({
      { "__angelspetrochemgraphics__/graphics/icons/molecules/styrene.png", 72 },
    }, "CHH"),
    crafting_machine_tint = AF.get_recipe_tints({ "angels-liquid-styrene", "angels-liquid-ethylbenzene" }),
    order = "a[liquid-styrene]",
  },
  {
    type = "recipe",
    name = "angels-liquid-phenol",
    localised_name = { "recipe-name.angels-liquid-phenol" },
    category = "chemistry",
    subgroup = "angels-petrochem-chemistry",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-gas-benzene", amount = 100 },
      { type = "fluid", name = "angels-gas-oxygen", amount = 100 },
      { type = "item", name = "angels-catalyst-metal-yellow", amount = 1 }, --Fe
    },
    results = {
      { type = "fluid", name = "angels-liquid-phenol", amount = 100 },
      { type = "item", name = "angels-catalyst-metal-carrier", amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1 },
    },
    main_product = "angels-liquid-phenol",
    always_show_products = true,
    icons = angelsmods.functions.create_gas_recipe_icon({
      { "__angelspetrochemgraphics__/graphics/icons/molecules/phenol.png", 72 },
    }, "COH"),
    crafting_machine_tint = AF.get_recipe_tints({ "angels-liquid-phenol", "angels-gas-benzene", "angels-gas-oxygen" }),
    order = "d[liquid-phenol]-a",
  },
  {
    type = "recipe",
    name = "angels-gas-propene",
    localised_name = { "recipe-name.angels-gas-propene" },
    category = "angels-steam-cracking",
    subgroup = "angels-petrochem-chemistry",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-gas-methanol", amount = 100 },
      { type = "fluid", name = "steam", amount = 50 },
    },
    results = {
      { type = "fluid", name = "angels-gas-propene", amount = 80 },
      { type = "fluid", name = "angels-gas-residual", amount = 20 },
    },
    main_product = "angels-gas-propene",
    always_show_products = true,
    icons = angelsmods.functions.create_gas_recipe_icon({
      { "__angelspetrochemgraphics__/graphics/icons/molecules/propene.png", 72 },
    }, "CHWs"),
    crafting_machine_tint = AF.get_recipe_tints({ "angels-gas-propene", "angels-gas-methanol", "angels-gas-residual", "steam" }),
    order = "e[gas-propene]",
  },
  --ADVANCED CHEMISTRY
  {
    type = "recipe",
    name = "angels-liquid-ethylbenzene",
    localised_name = { "recipe-name.angels-liquid-ethylbenzene" },
    category = "angels-advanced-chemistry",
    subgroup = "angels-petrochem-chemistry",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-gas-benzene", amount = 50 },
      { type = "fluid", name = "angels-gas-ethylene", amount = 50 },
      { type = "fluid", name = "angels-liquid-hydrofluoric-acid", amount = 20 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-ethylbenzene", amount = 80 },
      --{type = "fluid", name = "angels-gas-hydrogen", amount = 20},
      { type = "fluid", name = "angels-gas-hydrogen-fluoride", amount = 20, ignored_by_productivity = 20 },
    },
    main_product = "angels-liquid-ethylbenzene",
    always_show_products = true,
    icons = angelsmods.functions.create_gas_recipe_icon({
      { "__angelspetrochemgraphics__/graphics/icons/molecules/ethylbenzene.png", 72 },
    }, "CHH"),
    crafting_machine_tint = AF.get_recipe_tints({
      "angels-liquid-ethylbenzene",
      "angels-gas-benzene",
      "angels-liquid-hydrofluoric-acid",
      "angels-gas-hydrogen-fluoride",
    }),
    order = "b[liquid-ethylbenzene-catalyst]",
  },
  {
    type = "recipe",
    name = "angels-liquid-ethylene-carbonate",
    localised_name = { "fluid-name.angels-liquid-ethylene-carbonate" },
    category = "chemistry",
    subgroup = "angels-petrochem-chemistry",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-gas-ethylene-oxide", amount = 100 },
      { type = "fluid", name = "angels-gas-carbon-dioxide", amount = 100 },
      --{ type = "item", name = "angels-catalyst-metal-green", amount = 1 } --ideally a zinc catalyst
    },
    results = {
      { type = "fluid", name = "angels-liquid-ethylene-carbonate", amount = 90 },
      --{ type = "item", name = "angels-catalyst-metal-carrier", amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1 }
    },
    always_show_products = true,
    icons = angelsmods.functions.create_liquid_recipe_icon({
      { "__angelspetrochemgraphics__/graphics/icons/molecules/ethylene-carbonate.png", 72 },
    }, "COH"),
    crafting_machine_tint = AF.get_recipe_tints({
      "angels-liquid-ethyelene-carbonate",
      "angels-liquid-ethylene-oxide",
      "angels-gas-carbon-dioxide",
    }),
    order = "c[ethylene-carbonate]",
  },
  {
    type = "recipe",
    name = "angels-cumene-process",
    category = "angels-advanced-chemistry",
    subgroup = "angels-petrochem-chemistry",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-gas-benzene", amount = 50 },
      { type = "fluid", name = "angels-gas-propene", amount = 50 },
      { type = "fluid", name = "angels-gas-oxygen", amount = 20 },
      { type = "item", name = "angels-catalyst-metal-blue", amount = 1 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-phenol", amount = 60 },
      { type = "fluid", name = "angels-gas-acetone", amount = 60 },
      { type = "item", name = "angels-catalyst-metal-carrier", amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_gas_recipe_icon({
      { "__angelspetrochemgraphics__/graphics/icons/molecules/phenol.png", 72 },
      { "__angelspetrochemgraphics__/graphics/icons/molecules/acetone.png", 72 },
    }, "COH"),
    crafting_machine_tint = AF.get_recipe_tints({ "angels-liquid-phenol", "angels-gas-benzene", "angels-gas-acetone", "angels-gas-oxygen" }),
    order = "d[cumene-process]-b",
  },
  {
    type = "recipe",
    name = "angels-liquid-bisphenol-a",
    localised_name = { "fluid-name.angels-liquid-bisphenol-a" },
    category = "angels-advanced-chemistry",
    subgroup = "angels-petrochem-chemistry",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-liquid-phenol", amount = 60 },
      { type = "fluid", name = "angels-gas-acetone", amount = 40 },
      { type = "fluid", name = "angels-liquid-hydrochloric-acid", amount = 20 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-bisphenol-a", amount = 100 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_liquid_recipe_icon({
      { "__angelspetrochemgraphics__/graphics/icons/molecules/bisphenol_a.png", 72 },
    }, "COH"),
    crafting_machine_tint = AF.get_recipe_tints({
      "angels-liquid-bisphenol-a",
      "angels-liquid-phenol",
      "angels-liquid-acetone",
      "angels-liquid-hydrochloric-acid",
    }),
    order = "e",
  },
})
