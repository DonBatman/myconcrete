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
--Craft
minetest.register_craft({
	output = "myconcrete:curb_stop 3",
	recipe = {
		{"","",""},
		{"","",""},
		{"","myconcrete:concrete",""},
	}
})

