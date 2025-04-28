local sep_wall_cbox = {
	type = "fixed",
	fixed = {
		{-5/16, -1/2, -7/16, 5/16, -1/4, 7/16},
		{-1/16, -1/4, -7/16, 1/16, 1/2, 7/16},
		{-3/16, -1/2, -5/16, 3/16, 0, -1/4},
		{-3/16, -1/2, 1/4, 3/16, 0, 5/16}
	}
}

local cyl_cbox = {
	type = "fixed",
	fixed = {
		{3/8, -1/2, -1/2, 1/2, 1/2, 1/2},
		{-1/2, -1/2, -1/2, -3/8, 1/2, 1/2},
		{-1/2, -1/2, 3/8, 1/2, 1/2, 1/2},
		{-1/2, -1/2, -1/2, 1/2, 1/2, -3/8}
	}
}
local fence_cbox = {
	type = "fixed",
	fixed = {-1/8, -1/2, -1/8, 1/8, 1/2, 1/8},
}
local paintables = {
	"myconcrete:guard", "myconcrete:rail", "myconcrete:bullard", "myconcrete:guard", "myconcrete:curb_stop", "myconcrete:precast_concrete_seperating_wall", "myconcrete:precast_concrete_cylinder", "myconcrete:fence_concrete"
}

for _, entry in ipairs(myconcrete.colors) do
	local color = entry[1]
	local desc = entry[2]
	local paint = "^[colorize:"..entry[3]
	


--Guard
minetest.register_node("myconcrete:guard", {
	description = "Concrete Guard",
	tiles = {
		"myconcrete_concrete.png",
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.475, -0.5, -0.3125, 0.475, -0.4375, 0.3125},
			{-0.475, -0.5, -0.25, 0.475, -0.375, 0.25},
			{-0.475, -0.5, -0.1875, 0.475, -0.3125, 0.1875},
			{-0.475, -0.5, -0.125, 0.475, 0.4375, 0.125},
			{-0.475, -0.5, -0.0625, 0.475, 0.5, 0.0625},
		}
	}
})
minetest.register_node("myconcrete:guard_"..color, {
	description = desc.." Concrete Guard",
	tiles = {
		"myconcrete_concrete.png"..paint,
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, not_in_creative_inventory = 1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.475, -0.5, -0.3125, 0.475, -0.4375, 0.3125},
			{-0.475, -0.5, -0.25, 0.475, -0.375, 0.25},
			{-0.475, -0.5, -0.1875, 0.475, -0.3125, 0.1875},
			{-0.475, -0.5, -0.125, 0.475, 0.4375, 0.125},
			{-0.475, -0.5, -0.0625, 0.475, 0.5, 0.0625},
		}
	}
})
--Craft
minetest.register_craft({
	output = "myconcrete:guard 5",
	recipe = {
		{"","",""},
		{"","myconcrete:concrete",""},
		{"myconcrete:concrete","myconcrete:concrete","myconcrete:concrete"},
	}
})
--Rail
minetest.register_node("myconcrete:rail", {
	description = "Concrete Rail",
	tiles = {
		"myconcrete_concrete.png",
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.1875, -0.5, 0.25, 0.1875, 0.5, 0.5},
			{-0.5, 0.25, 0.125, 0.5, 0.5, 0.25},
			{-0.5, -0.1875, 0.125, 0.5, 0.0625, 0.25},
		}
	}
})
minetest.register_node("myconcrete:rail_"..color, {
	description = desc.." Concrete Rail",
	tiles = {
		"myconcrete_concrete.png"..paint,
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.1875, -0.5, 0.25, 0.1875, 0.5, 0.5},
			{-0.5, 0.25, 0.125, 0.5, 0.5, 0.25},
			{-0.5, -0.1875, 0.125, 0.5, 0.0625, 0.25},
		}
	}
})
--Craft
minetest.register_craft({
	output = "myconcrete:rail 4",
	recipe = {
		{"myconcrete:concrete","",""},
		{"myconcrete:concrete","",""},
		{"myconcrete:concrete","myconcrete:concrete",""},
	}
})
--Bullard
minetest.register_node("myconcrete:bullard", {
	description = "Concrete Bullard",
	tiles = {
		"myconcrete_concrete.png",
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.125, -0.5, -0.1875, 0.125, 0.375, 0.1875},
			{-0.1875, -0.5, -0.125, 0.1875, 0.375, 0.125},
			{-0.125, -0.5, -0.125, 0.125, 0.4375, 0.125},
		}
	}
})
minetest.register_node("myconcrete:bullard_"..color, {
	description = desc.." Concrete Bullard",
	tiles = {
		"myconcrete_concrete.png"..paint,
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.125, -0.5, -0.1875, 0.125, 0.375, 0.1875},
			{-0.1875, -0.5, -0.125, 0.1875, 0.375, 0.125},
			{-0.125, -0.5, -0.125, 0.125, 0.4375, 0.125},
		}
	}
})
--Craft
minetest.register_craft({
	output = "myconcrete:bullard 3",
	recipe = {
		{"","myconcrete:concrete",""},
		{"","myconcrete:concrete",""},
		{"","myconcrete:concrete",""},
	}
})
--Curb Stop
minetest.register_node("myconcrete:curb_stop", {
	description = "Concrete Curb Stop",
	tiles = {
		"myconcrete_concrete.png",
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.45, -0.5, -0.1875, 0.45, -0.25, 0.1875},
			{-0.45, -0.5, -0.125, 0.45, -0.1875, 0.125},
		}
	}
})
minetest.register_node("myconcrete:curb_stop_"..color, {
	description = desc.." Concrete Curb Stop",
	tiles = {
		"myconcrete_concrete.png"..paint,
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.45, -0.5, -0.1875, 0.45, -0.25, 0.1875},
			{-0.45, -0.5, -0.125, 0.45, -0.1875, 0.125},
		}
	}
})
--Craft
minetest.register_craft({
	output = "myconcrete:curb_stop 3",
	recipe = {
		{"","",""},
		{"","",""},
		{"","myconcrete:concrete",""},
	}
})

minetest.register_node("myconcrete:precast_concrete_seperating_wall_"..color, {
	description = desc.." Seperating Wall",
	drawtype = "nodebox",
	tiles = {"myconcrete_concrete.png"..paint},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 1, not_in_creative_inventory = 1, concrete = 1},
	sounds = default.node_sound_stone_defaults(),
	node_box = sep_wall_cbox,
	selection_box = sep_wall_cbox,
	collision_box = sep_wall_cbox,
})
minetest.register_node("myconcrete:precast_concrete_cylinder_"..color, {
	description = desc.." Cylinder",
	drawtype = "nodebox",
	tiles = {"myconcrete_concrete.png"..paint},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 1, not_in_creative_inventory = 1, concrete = 1},
	sounds = default.node_sound_stone_defaults(),
	node_box = cyl_cbox,
	selection_box = cyl_cbox,
	collision_box = cyl_cbox,
})
minetest.register_node("myconcrete:fence_concrete_"..color, {
	description = desc.." Concrete Fence",
	drawtype = "fencelike",
	tiles = {"myconcrete_concrete.png"..paint},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 1, not_in_creative_inventory = 1, concrete = 1},
	sounds = default.node_sound_stone_defaults(),
	selection_box = fence_cbox,
	collision_box = fence_cbox,
})
end
if core.get_modpath("mypaint") then
local colors = {}
for _, entry in ipairs(myconcrete.colors) do
	table.insert(colors, entry[1])
end
	mypaint.register(paintables, colors)
end
