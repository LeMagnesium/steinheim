-- Minetest 0.4 mod: stairs
-- See README.txt for licensing and other information.

staircase = {}

-- Node will be called staircase:stair_<subname>
function staircase.register_railings(subname, groups, images, desc)
	minetest.register_node("staircase:railing_" .. subname, {
		description = desc..' Railing',--description,description,
		drawtype = "nodebox",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
--				{-0.5, -0.5, 0.4, 0.5, 0.1, 0.5},

				{-0.5, 0.2, 0.35, 0.5, 0.3, 0.5},
				{-0.5, -0.5, 0.4, -0.45, 0.2, 0.5},
				{0.5, -0.5, 0.4, 0.45, 0.2, 0.5},
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, 0.35, 0.5, 0.3, 0.5},

			},
		},
	})
	minetest.register_node("staircase:urailing_" .. subname, {
		description = desc..' Railing (Support Piece)',--description,description,
		drawtype = "nodebox",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, 0.3, 0.4, 0.5, 0.5, 0.5},
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, 0.3, 0.4, 0.5, 0.5, 0.5},
			},
		},		
	})
	minetest.register_node("staircase:crailing_" .. subname, {
		description = desc..' Railing (Corner Piece)',--description,
		drawtype = "nodebox",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, 0.2, 0.35, 0.5, 0.3, 0.5},
				{-0.5, 0.2, -0.5, -0.35, 0.3, 0.35},
				{-0.5, -0.5, 0.4, -0.4, 0.2, 0.5},
				{0.5, -0.5, 0.4, 0.45, 0.2, 0.5},
				{-0.5, -0.5, -0.5, -0.4, 0.2, -0.45},												
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, 0.35, 0.5, 0.3, 0.5},
				{-0.5, -0.5, -0.5, -0.35, 0.3, 0.35},
			},
		},
	})
	minetest.register_node("staircase:ucrailing_" .. subname, {
		description = desc..' Railing (Corner Support Piece)',--description,description,
		drawtype = "nodebox",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, 0.3, 0.4, 0.5, 0.5, 0.5},
				{-0.5, 0.3, -0.5, -0.4, 0.5, 0.4},
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, 0.3, 0.4, 0.5, 0.5, 0.5},
				{-0.5, 0.3, -0.5, -0.4, 0.5, 0.4},

			},
		},
	})
	minetest.register_node("staircase:hrailing_" .. subname, {
		description = desc..' Railing (Corner Piece)',--description,
		drawtype = "nodebox",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, 0.2, 0.35, 0.5, 0.3, 0.5},
				{-0.5, 0.2, -0.5, -0.35, 0.3, 0.35},
				{0.5, 0.2, -0.5, 0.35, 0.3, 0.35},				

				{-0.5, -0.5, 0.4, -0.4, 0.2, 0.5},
				{0.5, -0.5, 0.4, 0.4, 0.2, 0.5},
				{-0.5, -0.5, -0.5, -0.4, 0.2, -0.45},
				{0.5, -0.5, -0.5, 0.4, 0.2, -0.45},																												
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, 0.2, 0.35, 0.5, 0.3, 0.5},
				{-0.5, 0.2, -0.5, -0.35, 0.3, 0.35},
				{0.5, 0.2, -0.5, 0.35, 0.3, 0.35},				

				{-0.5, -0.5, 0.4, -0.4, 0.2, 0.5},
				{0.5, -0.5, 0.4, 0.4, 0.2, 0.5},
				{-0.5, -0.5, -0.5, -0.4, 0.2, -0.45},
				{0.5, -0.5, -0.5, 0.4, 0.2, -0.45},		
			},
		},
	})
	minetest.register_node("staircase:uhrailing_" .. subname, {
		description = desc..' Railing (Corner Support Piece)',--description,description,
		drawtype = "nodebox",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, 0.3, 0.4, 0.5, 0.5, 0.5},
				{-0.5, 0.3, -0.5, -0.4, 0.5, 0.4},
				{0.5, 0.3, -0.5, 0.4, 0.5, 0.4},				
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, 0.3, 0.4, 0.5, 0.5, 0.5},
				{-0.5, 0.3, -0.5, -0.4, 0.5, 0.4},
				{0.5, 0.3, -0.5, 0.4, 0.5, 0.4},		

			},
		},
	})	
end
function staircase.register_catwalk(subname, groups, images, description)
	minetest.register_node("staircase:supcatwalk_" .. subname, {
		description = description..' Catwalk',--description,
		drawtype = "nodebox",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.1, -0.5, 0.5, 0.1, -0.45, -0.1},
				{-0.1, -0.45, -0.1, 0.1, 0.5, 0.1},

--				{-0.5, 0.2, -0.5, -0.4, 0.3, 0.5},
--				{0.5, 0.2, -0.5, 0.4, 0.3, 0.5},				
--
--				{-0.5, -0.45, 0.45, -0.45, 0.2, 0.5},
--				{0.5, -0.45, 0.45, 0.45, 0.2, 0.5},
--				{-0.5, -0.45, -0.5, -0.45, 0.2, -0.45},
--				{0.5, -0.45, -0.5, 0.45, 0.2, -0.45},																												
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.1, -0.5, 0.5, 0.1, -0.45, -0.1},
				{-0.1, -0.45, -0.1, 0.1, 0.5, 0.1},
			},
		},
		sounds = default.node_sound_wood_defaults(),
	})

	minetest.register_node("staircase:catwalk_" .. subname, {
		description = description..' Catwalk',--description,
		drawtype = "nodebox",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, -0.45, 0.5},

				{-0.5, 0.2, -0.5, -0.4, 0.3, 0.5},
				{0.5, 0.2, -0.5, 0.4, 0.3, 0.5},				

				{-0.5, -0.45, 0.45, -0.45, 0.2, 0.5},
				{0.5, -0.45, 0.45, 0.45, 0.2, 0.5},
				{-0.5, -0.45, -0.5, -0.45, 0.2, -0.45},
				{0.5, -0.45, -0.5, 0.45, 0.2, -0.45},																												
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, -0.45, 0.5},

				{-0.5, 0.2, -0.5, -0.4, 0.3, 0.5},
				{0.5, 0.2, -0.5, 0.4, 0.3, 0.5},				

				{-0.5, -0.45, 0.45, -0.45, 0.2, 0.5},
				{0.5, -0.45, 0.45, 0.45, 0.2, 0.5},
				{-0.5, -0.45, -0.5, -0.45, 0.2, -0.45},
				{0.5, -0.45, -0.5, 0.45, 0.2, -0.45},																												
			},
		},
		sounds = default.node_sound_wood_defaults(),
	})
		minetest.register_node("staircase:turncatwalk_" .. subname, {
		description = description..' Catwalk (Turn)',--description,
		drawtype = "nodebox",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, -0.45, 0.5},

				{-0.5, 0.2, -0.5, 0.5, 0.3, -0.4},
				{-0.5, 0.2, 0.5, -0.4, 0.3, -0.5},
				{0.5, 0.2, 0.5, 0.4, 0.3, 0.4},

				{-0.5, -0.45, 0.45, -0.45, 0.2, 0.5},
				{0.5, -0.45, 0.45, 0.45, 0.2, 0.5},
				{-0.5, -0.45, -0.5, -0.45, 0.2, -0.45},
				{0.5, -0.45, -0.5, 0.45, 0.2, -0.45},																												
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, -0.45, 0.5},

				{-0.5, 0.2, -0.5, 0.5, 0.3, -0.4},
				{-0.5, 0.2, 0.5, -0.4, 0.3, -0.5},
				{0.5, 0.2, 0.5, 0.4, 0.3, 0.4},

				{-0.5, -0.45, 0.45, -0.45, 0.2, 0.5},
				{0.5, -0.45, 0.45, 0.45, 0.2, 0.5},
				{-0.5, -0.45, -0.5, -0.45, 0.2, -0.45},
				{0.5, -0.45, -0.5, 0.45, 0.2, -0.45},																												
																											
			},
		},
		sounds = default.node_sound_wood_defaults(),
	})	
	
	minetest.register_node("staircase:tjuncatwalk_" .. subname, {
		description = description..' Catwalk (T Junction)',--description,
		drawtype = "nodebox",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, -0.45, 0.5},

				{-0.5, 0.2, -0.5, 0.5, 0.3, -0.4},
				{-0.5, 0.2, 0.5, -0.4, 0.3, 0.4},
				{0.5, 0.2, 0.5, 0.4, 0.3, 0.4},

				{-0.5, -0.45, 0.45, -0.45, 0.2, 0.5},
				{0.5, -0.45, 0.45, 0.45, 0.2, 0.5},
				{-0.5, -0.45, -0.5, -0.45, 0.2, -0.45},
				{0.5, -0.45, -0.5, 0.45, 0.2, -0.45},																												
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, -0.45, 0.5},

				{-0.5, 0.2, -0.5, 0.5, 0.3, -0.4},
				{-0.5, 0.2, 0.5, -0.4, 0.3, 0.4},
				{0.5, 0.2, 0.5, 0.4, 0.3, 0.4},

				{-0.5, -0.45, 0.45, -0.45, 0.2, 0.5},
				{0.5, -0.45, 0.45, 0.45, 0.2, 0.5},
				{-0.5, -0.45, -0.5, -0.45, 0.2, -0.45},
				{0.5, -0.45, -0.5, 0.45, 0.2, -0.45},																												
																											
			},
		},
		sounds = default.node_sound_wood_defaults(),
	})	
	minetest.register_node("staircase:crosscatwalk_" .. subname, {
		description = description..' Catwalk (4-Way Junction)',--description,
		drawtype = "nodebox",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, -0.45, 0.5},

				{-0.5, 0.2, -0.5, -0.4, 0.3, -0.4},
				{-0.5, 0.2, 0.5, -0.4, 0.3, 0.4},
				{0.5, 0.2, -0.5, 0.4, 0.3, -0.4},				
				{0.5, 0.2, 0.5, 0.4, 0.3, 0.4},
								
				{-0.5, -0.45, 0.45, -0.45, 0.2, 0.5},
				{0.5, -0.45, 0.45, 0.45, 0.2, 0.5},
				{-0.5, -0.45, -0.5, -0.45, 0.2, -0.45},
				{0.5, -0.45, -0.5, 0.45, 0.2, -0.45},																												
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, -0.45, 0.5},

				{-0.5, 0.2, -0.5, -0.4, 0.3, -0.4},
				{-0.5, 0.2, 0.5, -0.4, 0.3, 0.4},
				{0.5, 0.2, -0.5, 0.4, 0.3, -0.4},				
				{0.5, 0.2, 0.5, 0.4, 0.3, 0.4},
								
				{-0.5, -0.45, 0.45, -0.45, 0.2, 0.5},
				{0.5, -0.45, 0.45, 0.45, 0.2, 0.5},
				{-0.5, -0.45, -0.5, -0.45, 0.2, -0.45},
				{0.5, -0.45, -0.5, 0.45, 0.2, -0.45},																												
			},
		},
		sounds = default.node_sound_wood_defaults(),
	})
end

staircase.register_railings("metal", {snappy=2,choppy=2,oddly_breakable_by_hand=2},	{"riventest_metal.png"},	"Metal")
staircase.register_catwalk("metal", {snappy=2,choppy=2,oddly_breakable_by_hand=2},	{"riventest_metal.png"},	"Metal")

