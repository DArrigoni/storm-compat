data:extend(
{
	-- Flare Recipes
	{

		type = "recipe",
		name = "storm-compat-py-chemical-void-tar",
		category = "angels-chemical-void",
		enabled = "true",
		hidden = "true",
		energy_required = 1,
		ingredients =
		{
			{type="fluid", name="tar", amount=10}
		},
		results=
		{
			{type="item", name="chemical-void", amount=1, probability=0},
		},
		subgroup = "angels-void",
		icon = "__pycoalprocessing__/graphics/icons/tar.png",
		order = "storm-compat-py-chemical-void-tar"
	},
	{

		type = "recipe",
		name = "storm-compat-py-chemical-void-coal-gas",
		category = "angels-chemical-void",
		enabled = "true",
		hidden = "true",
		energy_required = 1,
		ingredients =
		{
			{type="fluid", name="coal-gas", amount=10}
		},
		results=
		{
			{type="item", name="chemical-void", amount=1, probability=0},
		},
		subgroup = "angels-void",
		icon = "__pycoalprocessing__/graphics/icons/coalgas.png",
		order = "storm-compat-py-chemical-void-coal-gas"
	},
	{

		type = "recipe",
		name = "storm-compat-py-chemical-void-creosote",
		category = "angels-chemical-void",
		enabled = "true",
		hidden = "true",
		energy_required = 1,
		ingredients =
		{
			{type="fluid", name="creosote", amount=10}
		},
		results=
		{
			{type="item", name="chemical-void", amount=1, probability=0},
		},
		subgroup = "angels-void",
		icon = "__pycoalprocessing__/graphics/icons/creosote.png",
		order = "storm-compat-py-chemical-void-creosote"
	},
	{

		type = "recipe",
		name = "storm-compat-py-chemical-void-syngas",
		category = "angels-chemical-void",
		enabled = "true",
		hidden = "true",
		energy_required = 1,
		ingredients =
		{
			{type="fluid", name="syngas", amount=10}
		},
		results=
		{
			{type="item", name="chemical-void", amount=1, probability=0},
		},
		subgroup = "angels-void",
		icon = "__pycoalprocessing__/graphics/icons/syngas.png",
		order = "storm-compat-py-chemical-void-syngas"
	},
	-- Conversion
	{
		type = "recipe",
		name = "storm-compat-py-coke-to-angle-coke-conversion",
		category = "crafting",
		subgroup = "petrochem-coal",
		energy_required = 4,
		enabled = "false",
		ingredients ={
			{type="item", name="coke", amount=1},
		},
		results=
		{
			{type="item", name="solid-coke", amount=2},
		},
		icon = "__angelspetrochem__/graphics/icons/solid-coke.png",
		order = "z[coke-conversion]",
	},
	{
	    type = "recipe",
	    name = "storm-compat-stone-crushing",
	    category = "ore-sorting-t1",
		subgroup = "slag-processing",
	    energy_required = 1,
		enabled = "false",
	    ingredients ={{"stone", 1}},
	    results=
	    {
	      {type="item", name="stone-crushed", amount=2},
	    },
		main_product = "stone-crushed",
	    icon = "__angelsrefining__/graphics/icons/stone-crushed.png",
	    order = "a-b [slag-processing-stone]",
	},
})

table.insert(data.raw["technology"]["coal-processing1"].effects, {type = "unlock-recipe",recipe = "storm-compat-py-coke-to-angle-coke-conversion"})
table.insert(data.raw["technology"]["ore-crushing"].effects, {type = "unlock-recipe",recipe = "storm-compat-stone-crushing"})

angelsmods.functions.make_converter("gas-synthesis", "syngas")
angelsmods.functions.make_converter("syngas", "gas-synthesis")