myconcrete = {}

myconcrete.colors = {
	{"black",      "Black",      "#000000:150"},
	{"blue",       "Blue",       "#2000c9:150"},
	{"brown",      "Brown",      "#954c05:150"},
	{"cyan",       "Cyan",       "#01ffd8:150"},
	{"darkgreen", "Dark Green",  "#005b07:150"},
	{"darkgrey",  "Dark Grey",   "#303030:150"},
	{"green",      "Green",      "#61ff01:150"},
	{"grey",       "Grey",       "#5b5b5b:150"},
	{"magenta",    "Magenta",    "#ff05bb:150"},
	{"orange",     "Orange",     "#ff8401:150"},
	{"pink",       "Pink",       "#ff65b5:150"},
	{"red",        "Red",        "#ff0000:150"},
	{"violet",     "Violet",     "#ab23b0:150"},
	{"white",      "White",      "#ffffff:150"},
	{"yellow",     "Yellow",     "#e3ff00:150"},
}

dofile(minetest.get_modpath("myconcrete").."/concrete.lua")
dofile(minetest.get_modpath("myconcrete").."/limestone.lua")
dofile(minetest.get_modpath("myconcrete").."/mapgen.lua")
dofile(minetest.get_modpath("myconcrete").."/aliases.lua")
dofile(minetest.get_modpath("myconcrete").."/nodes.lua")

if core.get_modpath("mypaint") then
	dofile(minetest.get_modpath("myconcrete").."/mypaint.lua")
end
