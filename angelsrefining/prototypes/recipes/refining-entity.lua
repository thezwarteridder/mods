data:extend({
  --ORE CRUSHER
  {
    type = "recipe",
    name = "burner-ore-crusher",
    localised_name = { "entity-name.burner-ore-crusher" },
    energy_required = 5,
    enabled = true,
    ingredients = {
      { type = "item", name = "angels-void", amount = 1 },
    },
    results = { { type = "item", name = "burner-ore-crusher", amount = 1 } },
  },
  {
    type = "recipe",
    name = "ore-crusher",
    localised_name = { "entity-name.ore-crusher" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "burner-ore-crusher", amount = 1 },
    },
    results = { { type = "item", name = "ore-crusher", amount = 1 } },
  },
  {
    type = "recipe",
    name = "ore-crusher-2",
    localised_name = { "entity-name.ore-crusher-2" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "ore-crusher", amount = 1 },
    },
    results = { { type = "item", name = "ore-crusher-2", amount = 1 } },
  },
  {
    type = "recipe",
    name = "ore-crusher-3",
    localised_name = { "entity-name.ore-crusher-3" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "ore-crusher-2", amount = 1 },
    },
    results = { { type = "item", name = "ore-crusher-3", amount = 1 } },
  },
  --ORE FLOATATION CELL
  {
    type = "recipe",
    name = "ore-floatation-cell",
    localised_name = { "entity-name.ore-floatation-cell" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-void", amount = 1 },
    },
    results = { { type = "item", name = "ore-floatation-cell", amount = 1 } },
  },
  {
    type = "recipe",
    name = "ore-floatation-cell-2",
    localised_name = { "entity-name.ore-floatation-cell-2" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "ore-floatation-cell", amount = 1 },
    },
    results = { { type = "item", name = "ore-floatation-cell-2", amount = 1 } },
  },
  {
    type = "recipe",
    name = "ore-floatation-cell-3",
    localised_name = { "entity-name.ore-floatation-cell-3" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "ore-floatation-cell-2", amount = 1 },
    },
    results = { { type = "item", name = "ore-floatation-cell-3", amount = 1 } },
  },
  --ORE LEACHING PLANT
  {
    type = "recipe",
    name = "ore-leaching-plant",
    localised_name = { "entity-name.ore-leaching-plant" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-void", amount = 1 },
    },
    results = { { type = "item", name = "ore-leaching-plant", amount = 1 } },
  },
  {
    type = "recipe",
    name = "ore-leaching-plant-2",
    localised_name = { "entity-name.ore-leaching-plant-2" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "ore-leaching-plant", amount = 1 },
    },
    results = { { type = "item", name = "ore-leaching-plant-2", amount = 1 } },
  },
  {
    type = "recipe",
    name = "ore-leaching-plant-3",
    localised_name = { "entity-name.ore-leaching-plant-3" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "ore-leaching-plant-2", amount = 1 },
    },
    results = { { type = "item", name = "ore-leaching-plant-3", amount = 1 } },
  },
  --ORE REFINERY
  {
    type = "recipe",
    name = "ore-refinery",
    localised_name = { "entity-name.ore-refinery" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-void", amount = 1 },
    },
    results = { { type = "item", name = "ore-refinery", amount = 1 } },
  },
  {
    type = "recipe",
    name = "ore-refinery-2",
    localised_name = { "entity-name.ore-refinery-2" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "ore-refinery", amount = 1 },
    },
    results = { { type = "item", name = "ore-refinery-2", amount = 1 } },
  },
  --ORE SORTING FACILITY
  {
    type = "recipe",
    name = "ore-sorting-facility",
    localised_name = { "entity-name.ore-sorting-facility" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-void", amount = 1 },
    },
    results = { { type = "item", name = "ore-sorting-facility", amount = 1 } },
  },
  {
    type = "recipe",
    name = "ore-sorting-facility-2",
    localised_name = { "entity-name.ore-sorting-facility-2" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "ore-sorting-facility", amount = 1 },
    },
    results = { { type = "item", name = "ore-sorting-facility-2", amount = 1 } },
  },
  {
    type = "recipe",
    name = "ore-sorting-facility-3",
    localised_name = { "entity-name.ore-sorting-facility-3" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "ore-sorting-facility-2", amount = 1 },
    },
    results = { { type = "item", name = "ore-sorting-facility-3", amount = 1 } },
  },
  {
    type = "recipe",
    name = "ore-sorting-facility-4",
    localised_name = { "entity-name.ore-sorting-facility-4" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "ore-sorting-facility-3", amount = 1 },
    },
    results = { { type = "item", name = "ore-sorting-facility-4", amount = 1 } },
  },
  {
    type = "recipe",
    name = "ore-sorting-facility-5",
    localised_name = { "entity-name.ore-sorting-facility-5" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "ore-sorting-facility-4", amount = 1 },
    },
    results = { { type = "item", name = "ore-sorting-facility-5", amount = 1 } },
  },
  --FILTRATION UNIT
  {
    type = "recipe",
    name = "filtration-unit",
    localised_name = { "entity-name.filtration-unit" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-void", amount = 1 },
    },
    results = { { type = "item", name = "filtration-unit", amount = 1 } },
  },
  {
    type = "recipe",
    name = "filtration-unit-2",
    localised_name = { "entity-name.filtration-unit-2" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "filtration-unit", amount = 1 },
    },
    results = { { type = "item", name = "filtration-unit-2", amount = 1 } },
  },
  {
    type = "recipe",
    name = "filtration-unit-3",
    localised_name = { "entity-name.filtration-unit-3" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "filtration-unit-2", amount = 1 },
    },
    results = { { type = "item", name = "filtration-unit-3", amount = 1 } },
  },
  --CRYSTALLIZER
  {
    type = "recipe",
    name = "crystallizer",
    localised_name = { "entity-name.crystallizer" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-void", amount = 1 },
    },
    results = { { type = "item", name = "crystallizer", amount = 1 } },
  },
  {
    type = "recipe",
    name = "crystallizer-2",
    localised_name = { "entity-name.crystallizer-2" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "crystallizer", amount = 1 },
    },
    results = { { type = "item", name = "crystallizer-2", amount = 1 } },
  },
  {
    type = "recipe",
    name = "crystallizer-3",
    localised_name = { "entity-name.crystallizer-3" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "crystallizer-2", amount = 1 },
    },
    results = { { type = "item", name = "crystallizer-3", amount = 1 } },
  },
  --LIQUIFIER
  {
    type = "recipe",
    name = "liquifier",
    localised_name = { "entity-name.liquifier" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-void", amount = 1 },
    },
    results = { { type = "item", name = "liquifier", amount = 1 } }, -- Why was this the only item without a results table?
    --result = "liquifier"
  },
  {
    type = "recipe",
    name = "liquifier-2",
    localised_name = { "entity-name.liquifier-2" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "liquifier", amount = 1 },
    },
    results = { { type = "item", name = "liquifier-2", amount = 1 } },
  },
  {
    type = "recipe",
    name = "liquifier-3",
    localised_name = { "entity-name.liquifier-3" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "liquifier-2", amount = 1 },
    },
    results = { { type = "item", name = "liquifier-3", amount = 1 } },
  },
  {
    type = "recipe",
    name = "liquifier-4",
    localised_name = { "entity-name.liquifier-4" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "liquifier-3", amount = 1 },
    },
    results = { { type = "item", name = "liquifier-4", amount = 1 } },
  },
  --THERMAL EXTRACTOR
  {
    type = "recipe",
    name = "thermal-bore",
    localised_name = { "entity-name.thermal-bore" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-void", amount = 1 },
    },
    results = { { type = "item", name = "thermal-bore", amount = 1 } },
  },
  {
    type = "recipe",
    name = "thermal-extractor",
    localised_name = { "entity-name.thermal-extractor" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-void", amount = 1 },
    },
    results = { { type = "item", name = "thermal-extractor", amount = 1 } },
  },
  --HYDRO PLANT
  {
    type = "recipe",
    name = "hydro-plant",
    localised_name = { "entity-name.hydro-plant" },
    energy_required = 10,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-void", amount = 1 },
    },
    results = { { type = "item", name = "hydro-plant", amount = 1 } },
  },
  {
    type = "recipe",
    name = "hydro-plant-2",
    localised_name = { "entity-name.hydro-plant-2" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "hydro-plant", amount = 1 },
    },
    results = { { type = "item", name = "hydro-plant-2", amount = 1 } },
  },
  {
    type = "recipe",
    name = "hydro-plant-3",
    localised_name = { "entity-name.hydro-plant-3" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "hydro-plant-2", amount = 1 },
    },
    results = { { type = "item", name = "hydro-plant-3", amount = 1 } },
  },
  --SALINATION PLANT
  {
    type = "recipe",
    name = "salination-plant",
    localised_name = { "entity-name.salination-plant" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-void", amount = 1 },
    },
    results = { { type = "item", name = "salination-plant", amount = 1 } },
  },
  {
    type = "recipe",
    name = "salination-plant-2",
    localised_name = { "entity-name.salination-plant-2" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "salination-plant", amount = 1 },
    },
    results = { { type = "item", name = "salination-plant-2", amount = 1 } },
  },
  --WASHING PLANT
  {
    type = "recipe",
    name = "washing-plant",
    localised_name = { "entity-name.washing-plant" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-void", amount = 1 },
    },
    results = { { type = "item", name = "washing-plant", amount = 1 } },
  },
  {
    type = "recipe",
    name = "washing-plant-2",
    localised_name = { "entity-name.washing-plant-2" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "washing-plant", amount = 1 },
    },
    results = { { type = "item", name = "washing-plant-2", amount = 1 } },
  },
  --SEAFLOOR PUMP
  {
    type = "recipe",
    name = "seafloor-pump",
    localised_name = { "entity-name.seafloor-pump" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-void", amount = 1 },
    },
    results = { { type = "item", name = "seafloor-pump", amount = 1 } },
  },
  --SEA PUMP
  {
    type = "recipe",
    name = "sea-pump",
    localised_name = { "entity-name.sea-pump" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-void", amount = 1 },
    },
    results = { { type = "item", name = "sea-pump", amount = 1 } },
  },
  --LAND PUMP
  {
    type = "recipe",
    name = "ground-water-pump",
    localised_name = { "entity-name.ground-water-pump" },
    energy_required = 5,
    enabled = true,
    ingredients = {
      { type = "item", name = "angels-void", amount = 1 },
    },
    results = { { type = "item", name = "ground-water-pump", amount = 1 } },
  },
  --CLARIFIER
  {
    type = "recipe",
    name = "clarifier",
    localised_name = { "entity-name.clarifier" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-void", amount = 1 },
    },
    results = { { type = "item", name = "clarifier", amount = 1 } },
  },
  --BARRELING PUMP
  {
    type = "recipe",
    name = "barreling-pump",
    localised_name = { "entity-name.barreling-pump" },
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-void", amount = 1 },
    },
    results = { { type = "item", name = "barreling-pump", amount = 1 } },
  },
  --ORE POWDERIZER
  {
    type = "recipe",
    name = "ore-powderizer",
    localised_name = { "entity-name.ore-powderizer" },
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-void", amount = 1 },
    },
    results = { { type = "item", name = "ore-powderizer", amount = 1 } },
  },
  {
    type = "recipe",
    name = "ore-powderizer-2",
    localised_name = { "entity-name.ore-powderizer-2" },
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-void", amount = 1 },
    },
    results = { { type = "item", name = "ore-powderizer-2", amount = 1 } },
  },
  {
    type = "recipe",
    name = "ore-powderizer-3",
    localised_name = { "entity-name.ore-powderizer-3" },
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-void", amount = 1 },
    },
    results = { { type = "item", name = "ore-powderizer-3", amount = 1 } },
  },
  --ELECTRO WHINNING CELL
  {
    type = "recipe",
    name = "electro-whinning-cell",
    localised_name = { "entity-name.electro-whinning-cell" },
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-void", amount = 1 },
    },
    results = { { type = "item", name = "electro-whinning-cell", amount = 1 } },
  },
  {
    type = "recipe",
    name = "electro-whinning-cell-2",
    localised_name = { "entity-name.electro-whinning-cell-2" },
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-void", amount = 1 },
    },
    results = { { type = "item", name = "electro-whinning-cell-2", amount = 1 } },
  },
})
