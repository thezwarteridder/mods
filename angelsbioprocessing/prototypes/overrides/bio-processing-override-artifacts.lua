local OV = angelsmods.functions.OV

local contains_artifact_creation = false
local artifact = {
  ["reg"] = (bobmods and bobmods.plates and bobmods.enemies) and "bob-alien-artifact" or "angels-alien-artifact",
  ["small-reg"] = (bobmods and bobmods.plates and bobmods.enemies) and "bob-small-alien-artifact" or "angels-small-alien-artifact",
  ["red"] = (bobmods and bobmods.plates and bobmods.enemies) and "bob-alien-artifact-red" or "angels-alien-artifact-red",
  ["small-red"] = (bobmods and bobmods.plates and bobmods.enemies) and "bob-small-alien-artifact-red" or "angels-small-alien-artifact-red",
  ["yellow"] = (bobmods and bobmods.plates and bobmods.enemies) and "bob-alien-artifact-yellow" or "angels-alien-artifact-yellow",
  ["small-yellow"] = (bobmods and bobmods.plates and bobmods.enemies) and "bob-small-alien-artifact-yellow" or "angels-small-alien-artifact-yellow",
  ["orange"] = (bobmods and bobmods.plates and bobmods.enemies) and "bob-alien-artifact-orange" or "angels-alien-artifact-orange",
  ["small-orange"] = (bobmods and bobmods.plates and bobmods.enemies) and "bob-small-alien-artifact-orange" or "angels-small-alien-artifact-orange",
  ["green"] = (bobmods and bobmods.plates and bobmods.enemies) and "bob-alien-artifact-green" or "angels-alien-artifact-green",
  ["small-green"] = (bobmods and bobmods.plates and bobmods.enemies) and "bob-small-alien-artifact-green" or "angels-small-alien-artifact-green",
  ["blue"] = (bobmods and bobmods.plates and bobmods.enemies) and "bob-alien-artifact-blue" or "angels-alien-artifact-blue",
  ["small-blue"] = (bobmods and bobmods.plates and bobmods.enemies) and "bob-small-alien-artifact-blue" or "angels-small-alien-artifact-blue",
  ["purple"] = (bobmods and bobmods.plates and bobmods.enemies) and "bob-alien-artifact-purple" or "angels-alien-artifact-purple",
  ["small-purple"] = (bobmods and bobmods.plates and bobmods.enemies) and "bob-small-alien-artifact-purple" or "angels-small-alien-artifact-purple",
}
-------------------------------------------------------------------------------
-- RED ARTIFACTS --------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.artifacts["red"] then
  if angelsmods.trigger.bio_pastes["copper"] then
    contains_artifact_creation = true
    data:extend({
      --PRE ARTIFACT
      {
        type = "item",
        name = "angels-alien-pre-artifact-red",
        icon = "__angelsbioprocessinggraphics__/graphics/icons/alien-pre-artifact-red.png",
        icon_size = 32,
        subgroup = "angels-bio-processing-alien-pre",
        order = "a[red]",
        stack_size = 200,
      },
      {
        type = "recipe",
        name = "angels-alien-pre-artifact-red",
        category = "crafting",
        subgroup = "angels-bio-processing-alien-pre",
        enabled = false,
        energy_required = 5,
        ingredients = {
          { type = "item", name = "angels-seeded-dish", amount = 1 },
          { type = "item", name = "angels-paste-copper", amount = 1 },
          -- {type="item", name="bob-ruby-4", amount=1},
        },
        results = {
          { type = "item", name = "angels-alien-pre-artifact-red", amount = 1 },
        },
        icon = "__angelsbioprocessinggraphics__/graphics/icons/alien-pre-artifact-red.png",
        icon_size = 32,
        order = "a[red]",
      },
      -- SMALL ARTIFACT
      {
        type = "recipe",
        name = "angels-small-alien-artifact-red",
        localised_name = { "item-name.angels-small-alien-artifact-red" },
        category = "crafting",
        subgroup = "angels-bio-processing-alien-small",
        enabled = false,
        energy_required = 5,
        ingredients = {
          { type = "item", name = "angels-alien-pre-artifact-red", amount = 1 },
        },
        results = {
          { type = "item", name = artifact["small-red"], amount = 1 },
        },
        icon_size = 32,
        order = "a[red]",
      },
    })

    OV.add_unlock("angels-bio-processing-alien-3", "angels-alien-pre-artifact-red")
    OV.add_unlock("angels-bio-processing-alien-3", "angels-small-alien-artifact-red")

    if bobmods and bobmods.plates then
      OV.patch_recipes({
        { name = "angels-alien-pre-artifact-red", ingredients = { { type = "item", name = "bob-ruby-4", amount = 1 } } },
      })
    end
  end

  if bobmods and bobmods.enemies and data.raw.item["bob-small-alien-artifact-red"] then
    if angelsmods.trigger.bio_pastes["copper"] or angelsmods.exploration then
      angelsmods.functions.move_item("bob-small-alien-artifact-red", "angels-bio-processing-alien-small", "a[red]")
    end
    angelsmods.functions.move_item("bob-alien-artifact-red", "angels-bio-processing-alien-large", "a[red]")
    OV.patch_recipes({
      { name = "angels-alien-artifact-red-from-basic", subgroup = "angels-bio-processing-alien-large-convert" },
    })
    if angelsmods.exploration then
      OV.patch_recipes({
        { name = "angels-alien-artifact-red-from-small", enabled = false },
        { name = "angels-alien-artifact-red-from-basic", enabled = false },
      })
    end
  else
    data:extend({
      -- SMALL ARTIFACT
      {
        type = "item",
        name = "angels-small-alien-artifact-red",
        icon = "__angelsbioprocessinggraphics__/graphics/icons/alien-artifact-red-small.png",
        icon_size = 32,
        subgroup = "angels-bio-processing-alien-small",
        order = "a[red]",
        stack_size = 200,
      },
      -- LARGE ARTIFACT
      {
        type = "item",
        name = "angels-alien-artifact-red",
        icon = "__angelsbioprocessinggraphics__/graphics/icons/alien-artifact-red.png",
        icon_size = 32,
        subgroup = "angels-bio-processing-alien-large",
        order = "a[red]",
        stack_size = 200,
      },
      {
        type = "recipe",
        name = "angels-alien-artifact-red-from-small",
        localised_name = { "item-name.angels-alien-artifact-red" },
        category = "crafting",
        enabled = false,
        energy_required = 5,
        ingredients = {
          { type = "item", name = "angels-small-alien-artifact-red", amount = 25 },
        },
        results = {
          { type = "item", name = "angels-alien-artifact-red", amount = 1 },
        },
        icon_size = 32,
        order = "a[red]",
      },
      {
        type = "recipe",
        name = "angels-alien-artifact-red-from-basic",
        localised_name = { "item-name.angels-alien-artifact-red" },
        category = "crafting",
        subgroup = "angels-bio-processing-alien-large-convert",
        enabled = false,
        energy_required = 5,
        ingredients = {
          { type = "item", name = artifact["red"], amount = 1 },
          { type = "item", name = artifact["reg"], amount = 5 },
        },
        results = {
          { type = "item", name = artifact["red"], amount = 5 },
        },
        icon_size = 32,
        order = "a[red]",
      },
    })
    OV.add_unlock("angels-alien-artifact-red","angels-alien-artifact-red-from-small")
    OV.add_unlock("angels-alien-artifact-red","angels-alien-artifact-red-from-basic")
  end

  if angelsmods.exploration then
    -- responsibility of angels exploration to handle the tech progress
  else
    OV.disable_technology("angels-alien-artifact-red")
  end
else
  OV.remove_unlock("angels-alien-artifact-red", "angels-alien-artifact-red-from-small")
  OV.remove_unlock("angels-alien-artifact-red", "angels-alien-artifact-red-from-basic")
  OV.disable_technology("angels-alien-artifact-red")
end

-------------------------------------------------------------------------------
-- YELLOW ARTIFACTS -----------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.artifacts["yellow"] then
  if angelsmods.trigger.bio_pastes["gold"] then
    contains_artifact_creation = true

    data:extend({
      --PRE ARTIFACT
      {
        type = "item",
        name = "angels-alien-pre-artifact-yellow",
        icon = "__angelsbioprocessinggraphics__/graphics/icons/alien-pre-artifact-yellow.png",
        icon_size = 32,
        subgroup = "angels-bio-processing-alien-pre",
        order = "b[yellow]",
        stack_size = 200,
      },
      {
        type = "recipe",
        name = "angels-alien-pre-artifact-yellow",
        category = "crafting",
        subgroup = "angels-bio-processing-alien-pre",
        enabled = false,
        energy_required = 5,
        ingredients = {
          { type = "item", name = "angels-seeded-dish", amount = 1 },
          { type = "item", name = "angels-paste-gold", amount = 1 },
          -- {type="item", name="bob-diamond-4", amount=1},
        },
        results = {
          { type = "item", name = "angels-alien-pre-artifact-yellow", amount = 1 },
        },
        icon = "__angelsbioprocessinggraphics__/graphics/icons/alien-pre-artifact-yellow.png",
        icon_size = 32,
        order = "b[yellow]",
      },
      -- SMALL ARTIFACT
      {
        type = "recipe",
        name = "angels-small-alien-artifact-yellow",
        localised_name = { "item-name.angels-small-alien-artifact-yellow" },
        category = "crafting",
        subgroup = "angels-bio-processing-alien-small",
        enabled = false,
        energy_required = 5,
        ingredients = {
          { type = "item", name = "angels-alien-pre-artifact-yellow", amount = 1 },
        },
        results = {
          { type = "item", name = artifact["small-yellow"], amount = 1 },
        },
        icon_size = 32,
        order = "b[yellow]",
      },
    })

    OV.add_unlock("angels-bio-processing-alien-3", "angels-alien-pre-artifact-yellow")
    OV.add_unlock("angels-bio-processing-alien-3", "angels-small-alien-artifact-yellow")

    if bobmods and bobmods.plates then
      OV.patch_recipes({
        { name = "angels-alien-pre-artifact-yellow", ingredients = { { type = "item", name = "bob-diamond-4", amount = 1 } } },
      })
    end
  end

  if bobmods and bobmods.enemies and data.raw.item["bob-small-alien-artifact-yellow"] then
    if angelsmods.trigger.bio_pastes["gold"] or angelsmods.exploration then
      angelsmods.functions.move_item("bob-small-alien-artifact-yellow", "angels-bio-processing-alien-small", "b[yellow]")
    end
    angelsmods.functions.move_item("bob-alien-artifact-yellow", "angels-bio-processing-alien-large", "b[yellow]")
    OV.patch_recipes({
      { name = "angels-alien-artifact-yellow-from-basic", subgroup = "angels-bio-processing-alien-large-convert" },
    })
    if angelsmods.exploration then
      OV.patch_recipes({
        { name = "angels-alien-artifact-yellow-from-small", enabled = false },
        { name = "angels-alien-artifact-yellow-from-basic", enabled = false },
      })
    end
  else
    data:extend({
      -- SMALL ARTIFACT
      {
        type = "item",
        name = "angels-small-alien-artifact-yellow",
        icon = "__angelsbioprocessinggraphics__/graphics/icons/alien-artifact-yellow-small.png",
        icon_size = 32,
        subgroup = "angels-bio-processing-alien-small",
        order = "b[yellow]",
        stack_size = 200,
      },
      -- LARGE ARTIFACT
      {
        type = "item",
        name = "angels-alien-artifact-yellow",
        icon = "__angelsbioprocessinggraphics__/graphics/icons/alien-artifact-yellow.png",
        icon_size = 32,
        subgroup = "angels-bio-processing-alien-large",
        order = "b[yellow]",
        stack_size = 200,
      },
      {
        type = "recipe",
        name = "angels-alien-artifact-yellow-from-small",
        localised_name = { "item-name.angels-alien-artifact-yellow" },
        category = "crafting",
        enabled = false,
        energy_required = 5,
        ingredients = {
          { type = "item", name = "angels-small-alien-artifact-yellow", amount = 25 },
        },
        results = {
          { type = "item", name = "angels-alien-artifact-yellow", amount = 1 },
        },
        icon_size = 32,
        order = "b[yellow]",
      },
      {
        type = "recipe",
        name = "angels-alien-artifact-yellow-from-basic",
        localised_name = { "item-name.angels-alien-artifact-yellow" },
        category = "crafting",
        subgroup = "angels-bio-processing-alien-large-convert",
        enabled = false,
        energy_required = 5,
        ingredients = {
          { type = "item", name = artifact["yellow"], amount = 1 },
          { type = "item", name = artifact["reg"], amount = 5 },
        },
        results = {
          { type = "item", name = artifact["yellow"], amount = 5 },
        },
        icon_size = 32,
        order = "b[yellow]",
      },
    })
    OV.add_unlock("angels-alien-artifact-yellow","angels-alien-artifact-yellow-from-small")
    OV.add_unlock("angels-alien-artifact-yellow","angels-alien-artifact-yellow-from-basic")
  end

  if angelsmods.exploration then
    -- responsibility of angels exploration to handle the tech progress
  else
    OV.disable_technology("angels-alien-artifact-yellow")
  end
else
  OV.remove_unlock("angels-alien-artifact-yellow", "angels-alien-artifact-yellow-from-small")
  OV.remove_unlock("angels-alien-artifact-yellow", "angels-alien-artifact-yellow-from-basic")
  OV.disable_technology("angels-alien-artifact-yellow")
end

-------------------------------------------------------------------------------
-- ORANGE ARTIFACTS -----------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.artifacts["orange"] then
  if angelsmods.trigger.bio_pastes["tungsten"] then
    contains_artifact_creation = true

    data:extend({
      --PRE ARTIFACT
      {
        type = "item",
        name = "angels-alien-pre-artifact-orange",
        icon = "__angelsbioprocessinggraphics__/graphics/icons/alien-pre-artifact-orange.png",
        icon_size = 32,
        subgroup = "angels-bio-processing-alien-pre",
        order = "c[orange]",
        stack_size = 200,
      },
      {
        type = "recipe",
        name = "angels-alien-pre-artifact-orange",
        category = "crafting",
        subgroup = "angels-bio-processing-alien-pre",
        enabled = false,
        energy_required = 5,
        ingredients = {
          { type = "item", name = "angels-seeded-dish", amount = 1 },
          { type = "item", name = "angels-paste-tungsten", amount = 1 },
          -- {type="item", name="bob-topaz-4", amount=1},
        },
        results = {
          { type = "item", name = "angels-alien-pre-artifact-orange", amount = 1 },
        },
        icon = "__angelsbioprocessinggraphics__/graphics/icons/alien-pre-artifact-orange.png",
        icon_size = 32,
        order = "c[orange]",
      },
      -- SMALL ARTIFACT
      {
        type = "recipe",
        name = "angels-small-alien-artifact-orange",
        localised_name = { "item-name.angels-small-alien-artifact-orange" },
        category = "crafting",
        subgroup = "angels-bio-processing-alien-small",
        enabled = false,
        energy_required = 5,
        ingredients = {
          { type = "item", name = "angels-alien-pre-artifact-orange", amount = 1 },
        },
        results = {
          { type = "item", name = artifact["small-orange"], amount = 1 },
        },
        icon_size = 32,
        order = "c[orange]",
      },
    })

    OV.add_unlock("angels-bio-processing-alien-3", "angels-alien-pre-artifact-orange")
    OV.add_unlock("angels-bio-processing-alien-3", "angels-small-alien-artifact-orange")

    if bobmods and bobmods.plates then
      OV.patch_recipes({
        { name = "angels-alien-pre-artifact-orange", ingredients = { { type = "item", name = "bob-topaz-4", amount = 1 } } },
      })
    end
  end

  if bobmods and bobmods.enemies and data.raw.item["bob-small-alien-artifact-orange"] then
    if angelsmods.trigger.bio_pastes["tungsten"] or angelsmods.exploration then
      angelsmods.functions.move_item("bob-small-alien-artifact-orange", "angels-bio-processing-alien-small", "c[orange]")
    end
    angelsmods.functions.move_item("bob-alien-artifact-orange", "angels-bio-processing-alien-large", "c[orange]")
    OV.patch_recipes({
      { name = "angels-alien-artifact-orange-from-basic", subgroup = "angels-bio-processing-alien-large-convert" },
    })
    if angelsmods.exploration then
      OV.patch_recipes({
        { name = "angels-alien-artifact-orange-from-small", enabled = false },
        { name = "angels-alien-artifact-orange-from-basic", enabled = false },
      })
    end
  else
    data:extend({
      -- SMALL ARTIFACT
      {
        type = "item",
        name = "angels-small-alien-artifact-orange",
        icon = "__angelsbioprocessinggraphics__/graphics/icons/alien-artifact-orange-small.png",
        icon_size = 32,
        subgroup = "angels-bio-processing-alien-small",
        order = "c[orange]",
        stack_size = 200,
      },
      -- LARGE ARTIFACT
      {
        type = "item",
        name = "angels-alien-artifact-orange",
        icon = "__angelsbioprocessinggraphics__/graphics/icons/alien-artifact-orange.png",
        icon_size = 32,
        subgroup = "angels-bio-processing-alien-large",
        order = "c[orange]",
        stack_size = 200,
      },
      {
        type = "recipe",
        name = "angels-alien-artifact-orange-from-small",
        localised_name = { "item-name.angels-alien-artifact-orange" },
        category = "crafting",
        enabled = false,
        energy_required = 5,
        ingredients = {
          { type = "item", name = "angels-small-alien-artifact-orange", amount = 25 },
        },
        results = {
          { type = "item", name = "angels-alien-artifact-orange", amount = 1 },
        },
        icon_size = 32,
        order = "c[orange]",
      },
      {
        type = "recipe",
        name = "angels-alien-artifact-orange-from-basic",
        localised_name = { "item-name.angels-alien-artifact-orange" },
        category = "crafting",
        subgroup = "angels-bio-processing-alien-large-convert",
        enabled = false,
        energy_required = 5,
        ingredients = {
          { type = "item", name = artifact["orange"], amount = 1 },
          { type = "item", name = artifact["reg"], amount = 5 },
        },
        results = {
          { type = "item", name = artifact["orange"], amount = 5 },
        },
        icon_size = 32,
        order = "c[orange]",
      },
    })
    OV.add_unlock("angels-alien-artifact-orange","angels-alien-artifact-orange-from-small")
    OV.add_unlock("angels-alien-artifact-orange","angels-alien-artifact-orange-from-basic")
  end

  if angelsmods.exploration then
    -- responsibility of angels exploration to handle the tech progress
  else
    OV.disable_technology("angels-alien-artifact-orange")
  end
else
  OV.remove_unlock("angels-alien-artifact-orange", "angels-alien-artifact-orange-from-small")
  OV.remove_unlock("angels-alien-artifact-orange", "angels-alien-artifact-orange-from-basic")
  OV.disable_technology("angels-alien-artifact-orange")
end

-------------------------------------------------------------------------------
-- BLUE ARTIFACTS -------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.artifacts["blue"] then
  if angelsmods.trigger.bio_pastes["cobalt"] then
    contains_artifact_creation = true

    data:extend({
      --PRE ARTIFACT
      {
        type = "item",
        name = "angels-alien-pre-artifact-blue",
        icon = "__angelsbioprocessinggraphics__/graphics/icons/alien-pre-artifact-blue.png",
        icon_size = 32,
        subgroup = "angels-bio-processing-alien-pre",
        order = "d[blue]",
        stack_size = 200,
      },
      {
        type = "recipe",
        name = "angels-alien-pre-artifact-blue",
        category = "crafting",
        subgroup = "angels-bio-processing-alien-pre",
        enabled = false,
        energy_required = 5,
        ingredients = {
          { type = "item", name = "angels-seeded-dish", amount = 1 },
          { type = "item", name = "angels-paste-cobalt", amount = 1 },
          -- {type="item", name="bob-sapphire-4", amount=1},
        },
        results = {
          { type = "item", name = "angels-alien-pre-artifact-blue", amount = 1 },
        },
        icon = "__angelsbioprocessinggraphics__/graphics/icons/alien-pre-artifact-blue.png",
        icon_size = 32,
        order = "d[blue]",
      },
      -- SMALL ARTIFACT
      {
        type = "recipe",
        name = "angels-small-alien-artifact-blue",
        localised_name = { "item-name.angels-small-alien-artifact-blue" },
        category = "crafting",
        subgroup = "angels-bio-processing-alien-small",
        enabled = false,
        energy_required = 5,
        ingredients = {
          { type = "item", name = "angels-alien-pre-artifact-blue", amount = 1 },
        },
        results = {
          { type = "item", name = artifact["small-blue"], amount = 1 },
        },
        icon_size = 32,
        order = "d[blue]",
      },
    })

    OV.add_unlock("angels-bio-processing-alien-3", "angels-alien-pre-artifact-blue")
    OV.add_unlock("angels-bio-processing-alien-3", "angels-small-alien-artifact-blue")

    if bobmods and bobmods.plates then
      OV.patch_recipes({
        { name = "angels-alien-pre-artifact-blue", ingredients = { { type = "item", name = "bob-sapphire-4", amount = 1 } } },
      })
    end
  end

  if bobmods and bobmods.enemies and data.raw.item["bob-small-alien-artifact-blue"] then
    if angelsmods.trigger.bio_pastes["cobalt"] or angelsmods.exploration then
      angelsmods.functions.move_item("bob-small-alien-artifact-blue", "angels-bio-processing-alien-small", "d[blue]")
    end
    angelsmods.functions.move_item("bob-alien-artifact-blue", "angels-bio-processing-alien-large", "d[blue]")
    OV.patch_recipes({
      { name = "angels-alien-artifact-blue-from-basic", subgroup = "angels-bio-processing-alien-large-convert" },
    })
    if angelsmods.exploration then
      OV.patch_recipes({
        { name = "angels-alien-artifact-blue-from-small", enabled = false },
        { name = "angels-alien-artifact-blue-from-basic", enabled = false },
      })
    end
  else
    data:extend({
      -- SMALL ARTIFACT
      {
        type = "item",
        name = "angels-small-alien-artifact-blue",
        icon = "__angelsbioprocessinggraphics__/graphics/icons/alien-artifact-blue-small.png",
        icon_size = 32,
        subgroup = "angels-bio-processing-alien-small",
        order = "d[blue]",
        stack_size = 200,
      },
      -- LARGE ARTIFACT
      {
        type = "item",
        name = "angels-alien-artifact-blue",
        icon = "__angelsbioprocessinggraphics__/graphics/icons/alien-artifact-blue.png",
        icon_size = 32,
        subgroup = "angels-bio-processing-alien-large",
        order = "d[blue]",
        stack_size = 200,
      },
      {
        type = "recipe",
        name = "angels-alien-artifact-blue-from-small",
        localised_name = { "item-name.alien-artifact-blue" },
        category = "crafting",
        enabled = false,
        energy_required = 5,
        ingredients = {
          { type = "item", name = "angels-small-alien-artifact-blue", amount = 25 },
        },
        results = {
          { type = "item", name = "angels-alien-artifact-blue", amount = 1 },
        },
        icon_size = 32,
        order = "d[blue]",
      },
      {
        type = "recipe",
        name = "angels-alien-artifact-blue-from-basic",
        localised_name = { "item-name.alien-artifact-blue" },
        category = "crafting",
        subgroup = "angels-bio-processing-alien-large-convert",
        enabled = false,
        energy_required = 5,
        ingredients = {
          { type = "item", name = artifact["blue"], amount = 1 },
          { type = "item", name = artifact["reg"], amount = 5 },
        },
        results = {
          { type = "item", name = artifact["blue"], amount = 5 },
        },
        icon = "__angelsbioprocessinggraphics__/graphics/icons/alien-artifact-blue.png",
        icon_size = 32,
        order = "d[blue]",
      },
    })
    OV.add_unlock("angels-alien-artifact-blue","angels-alien-artifact-blue-from-small")
    OV.add_unlock("angels-alien-artifact-blue","angels-alien-artifact-blue-from-basic")
  end

  if angelsmods.exploration then
    -- responsibility of angels exploration to handle the tech progress
  else
    OV.disable_technology("angels-alien-artifact-blue")
  end
else
  OV.remove_unlock("angels-alien-artifact-blue", "angels-alien-artifact-blue-from-small")
  OV.remove_unlock("angels-alien-artifact-blue", "angels-alien-artifact-blue-from-basic")
  OV.disable_technology("angels-alien-artifact-blue")
end

-------------------------------------------------------------------------------
-- PURPLE ARTIFACTS -----------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.artifacts["purple"] then
  if angelsmods.trigger.bio_pastes["titanium"] then
    contains_artifact_creation = true

    data:extend({
      --PRE ARTIFACT
      {
        type = "item",
        name = "angels-alien-pre-artifact-purple",
        icon = "__angelsbioprocessinggraphics__/graphics/icons/alien-pre-artifact-purple.png",
        icon_size = 32,
        subgroup = "angels-bio-processing-alien-pre",
        order = "e[purple]",
        stack_size = 200,
      },
      {
        type = "recipe",
        name = "angels-alien-pre-artifact-purple",
        category = "crafting",
        subgroup = "angels-bio-processing-alien-pre",
        enabled = false,
        energy_required = 5,
        ingredients = {
          { type = "item", name = "angels-seeded-dish", amount = 1 },
          { type = "item", name = "angels-paste-titanium", amount = 1 },
          -- {type="item", name="bob-amethyst-4", amount=1},
        },
        results = {
          { type = "item", name = "angels-alien-pre-artifact-purple", amount = 1 },
        },
        icon = "__angelsbioprocessinggraphics__/graphics/icons/alien-pre-artifact-purple.png",
        icon_size = 32,
        order = "e[purple]",
      },
      -- SMALL ARTIFACT
      {
        type = "recipe",
        name = "angels-small-alien-artifact-purple",
        localised_name = { "item-name.angels-small-alien-artifact-purple" },
        category = "crafting",
        subgroup = "angels-bio-processing-alien-small",
        enabled = false,
        energy_required = 5,
        ingredients = {
          { type = "item", name = "angels-alien-pre-artifact-purple", amount = 1 },
        },
        results = {
          { type = "item", name = artifact["small-purple"], amount = 1 },
        },
        icon_size = 32,
        order = "e[purple]",
      },
    })

    OV.add_unlock("angels-bio-processing-alien-3", "angels-alien-pre-artifact-purple")
    OV.add_unlock("angels-bio-processing-alien-3", "angels-small-alien-artifact-purple")

    if bobmods and bobmods.plates then
      OV.patch_recipes({
        { name = "angels-alien-pre-artifact-purple", ingredients = { { type = "item", name = "bob-amethyst-4", amount = 1 } } },
      })
    end
  end

  if bobmods and bobmods.enemies and data.raw.item["bob-small-alien-artifact-purple"] then
    if angelsmods.trigger.bio_pastes["titanium"] or angelsmods.exploration then
      angelsmods.functions.move_item("bob-small-alien-artifact-purple", "angels-bio-processing-alien-small", "e[purple]")
    end
    angelsmods.functions.move_item("bob-alien-artifact-purple", "angels-bio-processing-alien-large", "e[purple]")
    OV.patch_recipes({
      { name = "angels-alien-artifact-purple-from-basic", subgroup = "angels-bio-processing-alien-large-convert" },
    })
    if angelsmods.exploration then
      OV.patch_recipes({
        { name = "angels-alien-artifact-purple-from-small", enabled = false },
        { name = "angels-alien-artifact-purple-from-basic", enabled = false },
      })
    end
  else
    data:extend({
      -- SMALL ARTIFACT
      {
        type = "item",
        name = "angels-small-alien-artifact-purple",
        icon = "__angelsbioprocessinggraphics__/graphics/icons/alien-artifact-purple-small.png",
        icon_size = 32,
        subgroup = "angels-bio-processing-alien-small",
        order = "e[purple]",
        stack_size = 200,
      },
      -- LARGE ARTIFACT
      {
        type = "item",
        name = "angels-alien-artifact-purple",
        icon = "__angelsbioprocessinggraphics__/graphics/icons/alien-artifact-purple.png",
        icon_size = 32,
        subgroup = "angels-bio-processing-alien-large",
        order = "e[purple]",
        stack_size = 200,
      },
      {
        type = "recipe",
        name = "angels-alien-artifact-purple-from-small",
        localised_name = { "item-name.alien-artifact-purple" },
        category = "crafting",
        enabled = false,
        energy_required = 5,
        ingredients = {
          { type = "item", name = "angels-small-alien-artifact-purple", amount = 25 },
        },
        results = {
          { type = "item", name = "angels-alien-artifact-purple", amount = 1 },
        },
        icon_size = 32,
        order = "e[purple]",
      },
      {
        type = "recipe",
        name = "angels-alien-artifact-purple-from-basic",
        localised_name = { "item-name.alien-artifact-purple" },
        category = "crafting",
        subgroup = "angels-bio-processing-alien-large-convert",
        enabled = false,
        energy_required = 5,
        ingredients = {
          { type = "item", name = artifact["purple"], amount = 1 },
          { type = "item", name = artifact["reg"], amount = 5 },
        },
        results = {
          { type = "item", name = artifact["purple"], amount = 5 },
        },
        icon = "__angelsbioprocessinggraphics__/graphics/icons/alien-pre-artifact-purple.png",
        icon_size = 32,
        order = "e[purple]",
      },
    })
    OV.add_unlock("angels-alien-artifact-purple","angels-alien-artifact-purple-from-small")
    OV.add_unlock("angels-alien-artifact-purple","angels-alien-artifact-purple-from-basic")
  end

  if angelsmods.exploration then
    -- responsibility of angels exploration to handle the tech progress
  else
    OV.disable_technology("angels-alien-artifact-purple")
  end
else
  OV.remove_unlock("angels-alien-artifact-purple", "angels-alien-artifact-purple-from-small")
  OV.remove_unlock("angels-alien-artifact-purple", "angels-alien-artifact-purple-from-basic")
  OV.disable_technology("angels-alien-artifact-purple")
end

-------------------------------------------------------------------------------
-- GREEN ARTIFACTS ------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.artifacts["green"] then
  if angelsmods.trigger.bio_pastes["zinc"] then
    contains_artifact_creation = true

    data:extend({
      --PRE ARTIFACT
      {
        type = "item",
        name = "angels-alien-pre-artifact-green",
        icon = "__angelsbioprocessinggraphics__/graphics/icons/alien-pre-artifact-green.png",
        icon_size = 32,
        subgroup = "angels-bio-processing-alien-pre",
        order = "f[green]",
        stack_size = 200,
      },
      {
        type = "recipe",
        name = "angels-alien-pre-artifact-green",
        category = "crafting",
        subgroup = "angels-bio-processing-alien-pre",
        enabled = false,
        energy_required = 5,
        ingredients = {
          { type = "item", name = "angels-seeded-dish", amount = 1 },
          { type = "item", name = "angels-paste-zinc", amount = 1 },
          -- {type="item", name="bob-emerald-4", amount=1},
        },
        results = {
          { type = "item", name = "angels-alien-pre-artifact-green", amount = 1 },
        },
        icon = "__angelsbioprocessinggraphics__/graphics/icons/alien-pre-artifact-green.png",
        icon_size = 32,
        order = "f[green]",
      },
      -- SMALL ARTIFACT
      {
        type = "recipe",
        name = "angels-small-alien-artifact-green",
        localised_name = { "item-name.angels-small-alien-artifact-green" },
        category = "crafting",
        subgroup = "angels-bio-processing-alien-small",
        enabled = false,
        energy_required = 5,
        ingredients = {
          { type = "item", name = "angels-alien-pre-artifact-green", amount = 1 },
        },
        results = {
          { type = "item", name = artifact["small-green"], amount = 1 },
        },
        icon_size = 32,
        order = "f[green]",
      },
    })

    OV.add_unlock("angels-bio-processing-alien-3", "angels-alien-pre-artifact-green")
    OV.add_unlock("angels-bio-processing-alien-3", "angels-small-alien-artifact-green")

    if bobmods and bobmods.plates then
      OV.patch_recipes({
        { name = "angels-alien-pre-artifact-green", ingredients = { { type = "item", name = "bob-emerald-4", amount = 1 } } },
      })
    end
  end

  if bobmods and bobmods.enemies and data.raw.item["bob-small-alien-artifact-green"] then
    if angelsmods.trigger.bio_pastes["zinc"] or angelsmods.exploration then
      angelsmods.functions.move_item("bob-small-alien-artifact-green", "angels-bio-processing-alien-small", "f[green]")
    end
    angelsmods.functions.move_item("bob-alien-artifact-green", "angels-bio-processing-alien-large", "f[green]")
    OV.patch_recipes({
      { name = "angels-alien-artifact-green-from-basic", subgroup = "angels-bio-processing-alien-large-convert" },
    })
    if angelsmods.exploration then
      OV.patch_recipes({
        { name = "angels-alien-artifact-green-from-small", enabled = false },
        { name = "angels-alien-artifact-green-from-basic", enabled = false },
      })
    end
  else
    data:extend({
      -- SMALL ARTIFACT
      {
        type = "item",
        name = "angels-small-alien-artifact-green",
        icon = "__angelsbioprocessinggraphics__/graphics/icons/alien-artifact-green-small.png",
        icon_size = 32,
        subgroup = "angels-bio-processing-alien-small",
        order = "f[green]",
        stack_size = 200,
      },
      -- LARGE ARTIFACT
      {
        type = "item",
        name = "angels-alien-artifact-green",
        icon = "__angelsbioprocessinggraphics__/graphics/icons/alien-artifact-green.png",
        icon_size = 32,
        subgroup = "angels-bio-processing-alien-large",
        order = "f[green]",
        stack_size = 200,
      },
      {
        type = "recipe",
        name = "angels-alien-artifact-green-from-small",
        localised_name = { "item-name.alien-artifact-green" },
        category = "crafting",
        enabled = false,
        energy_required = 5,
        ingredients = {
          { type = "item", name = "angels-small-alien-artifact-green", amount = 25 },
        },
        results = {
          { type = "item", name = "angels-alien-artifact-green", amount = 1 },
        },
        icon_size = 32,
        order = "f[green]",
      },
      {
        type = "recipe",
        name = "angels-alien-artifact-green-from-basic",
        localised_name = { "item-name.alien-artifact-green" },
        category = "crafting",
        subgroup = "angels-bio-processing-alien-large-convert",
        enabled = false,
        energy_required = 5,
        ingredients = {
          { type = "item", name = artifact["green"], amount = 1 },
          { type = "item", name = artifact["reg"], amount = 5 },
        },
        results = {
          { type = "item", name = artifact["green"], amount = 5 },
        },
        icon = "__angelsbioprocessinggraphics__/graphics/icons/alien-pre-artifact-green.png",
        icon_size = 32,
        order = "f[green]",
      },
    })
    OV.add_unlock("angels-alien-artifact-green","angels-alien-artifact-green-from-small")
    OV.add_unlock("angels-alien-artifact-green","angels-alien-artifact-green-from-basic")
  end

  if angelsmods.exploration then
    -- responsibility of angels exploration to handle the tech progress
  else
    OV.disable_technology("angels-alien-artifact-green")
  end
else
  OV.remove_unlock("angels-alien-artifact-green", "angels-alien-artifact-green-from-small")
  OV.remove_unlock("angels-alien-artifact-green", "angels-alien-artifact-green-from-basic")
  OV.disable_technology("angels-alien-artifact-green")
end

-------------------------------------------------------------------------------
-- BASE ARTIFACTS (pink) ------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.artifacts["base"] then -- pink
  if angelsmods.trigger.bio_pastes["iron"] then
    contains_artifact_creation = true

    data:extend({
      --PRE ARTIFACT
      {
        type = "item",
        name = "angels-alien-pre-artifact-base",
        icon = "__angelsbioprocessinggraphics__/graphics/icons/alien-pre-artifact-base.png",
        icon_size = 32,
        subgroup = "angels-bio-processing-alien-pre",
        order = "g[base]",
        stack_size = 200,
      },
      {
        type = "recipe",
        name = "angels-alien-pre-artifact-base",
        category = "crafting",
        subgroup = "angels-bio-processing-alien-pre",
        enabled = false,
        energy_required = 5,
        ingredients = {
          { type = "item", name = "angels-seeded-dish", amount = 1 },
          { type = "item", name = "angels-paste-iron", amount = 1 },
        },
        results = {
          { type = "item", name = "angels-alien-pre-artifact-base", amount = 1 },
        },
        icon = "__angelsbioprocessinggraphics__/graphics/icons/alien-pre-artifact-base.png",
        icon_size = 32,
        order = "g[base]",
      },
      -- SMALL ARTIFACT
      {
        type = "recipe",
        name = "angels-small-alien-artifact",
        localised_name = { "item-name.angels-small-alien-artifact" },
        category = "crafting",
        subgroup = "angels-bio-processing-alien-small",
        enabled = false,
        energy_required = 5,
        ingredients = {
          { type = "item", name = "angels-alien-pre-artifact-base", amount = 1 },
        },
        results = {
          { type = "item", name = artifact["small-reg"], amount = 1 },
        },
        icon_size = 32,
        order = "g[base]",
      },
    })

    OV.add_unlock("angels-bio-processing-alien-3", "angels-alien-pre-artifact-base")
    OV.add_unlock("angels-bio-processing-alien-3", "angels-small-alien-artifact")
    OV.add_prereq("angels-bio-processing-alien-3", "angels-alien-artifact")
  end

  if bobmods and bobmods.enemies and data.raw.item["bob-small-alien-artifact"] then
    if angelsmods.trigger.bio_pastes["iron"] or angelsmods.exploration then
      angelsmods.functions.move_item("bob-small-alien-artifact", "angels-bio-processing-alien-small", "g[base]")
    end
    angelsmods.functions.move_item("bob-alien-artifact", "angels-bio-processing-alien-large", "g[base]")
    if angelsmods.exploration then
      OV.patch_recipes({
        { name = "angels-alien-artifact-from-small", enabled = false },
      })
      if mods["bobclasses"] and not data.raw.item["bob-rtg"] then
        OV.add_prereq("bob-bodies", "angels-alien-artifact")
      end
    end
  else
    data:extend({
      -- SMALL ARTIFACT
      {
        type = "item",
        name = "angels-small-alien-artifact",
        icon = "__angelsbioprocessinggraphics__/graphics/icons/alien-artifact-small.png",
        icon_size = 32,
        subgroup = "angels-bio-processing-alien-small",
        order = "g[base]",
        stack_size = 200,
      },
      -- LARGE ARTIFACT
      {
        type = "item",
        name = "angels-alien-artifact",
        icon = "__angelsbioprocessinggraphics__/graphics/icons/alien-artifact.png",
        icon_size = 32,
        subgroup = "angels-bio-processing-alien-large",
        order = "g[base]",
        stack_size = 200,
      },
      {
        type = "recipe",
        name = "angels-alien-artifact-from-small",
        localised_name = { "item-name.alien-artifact" },
        category = "crafting",
        enabled = false,
        energy_required = 5,
        ingredients = {
          { type = "item", name = "angels-small-alien-artifact", amount = 25 },
        },
        results = {
          { type = "item", name = "angels-alien-artifact", amount = 1 },
        },
        icon_size = 32,
        order = "g[base]",
      },
    })
    OV.add_unlock("angels-alien-artifact","angels-alien-artifact-from-small")
  end

  if angelsmods.exploration then
    -- responsibility of angels exploration to handle the tech progress
  else
    OV.remove_prereq("angels-bio-processing-alien-3", "angels-alien-artifact")
    OV.disable_technology("angels-alien-artifact")
  end
else
  OV.remove_unlock("angels-alien-artifact", "angels-alien-artifact-from-small")
  OV.disable_technology("angels-alien-artifact")
end

-------------------------------------------------------------------------------
if contains_artifact_creation then
else
  OV.disable_technology("angels-bio-processing-alien-3")
end

-------------------------------------------------------------------------------
if bobmods and bobmods.plates then
  data.raw["item-subgroup"]["bob-alien-resource"].group = "angels-bio-processing-alien"
  data.raw["item-subgroup"]["bob-alien-resource"].order = "e[alien-products]-d[resources]"
end
