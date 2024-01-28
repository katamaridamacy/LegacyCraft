-- Update 0.1
-- Changelog: https://docs.google.com/document/d/1kA5BYlFnh_dg5r_xg_U32st2cD0TrPtX6Xuw4B1Ypng/edit?usp=sharing
-- Credits: See "credits.txt".

local modname = minetest.get_current_modname()
local modpath = minetest.get_modpath(modname)

-- Registering modded nodes.

minetest.register_node("legacycraft:andesite", {
    description = "Andesite",
    tiles = {"legacycraft_andesite.png"},
    groups = {cracky = 2},
    stack_max = 64
})

minetest.register_node("legacycraft:diorite", {
    description = "Diorite",
    tiles = {"legacycraft_diorite.png"},
    groups = {cracky = 2},
    stack_max = 64
})

minetest.register_node("legacycraft:granite", {
    description = "Granite",
    tiles = {"legacycraft_granite.png"},
    groups = {cracky = 2},
    stack_max = 64
})

minetest.register_node("legacycraft:mud", {
    description = "Mud",
    tiles = {"legacycraft_mud.png"},
    groups = {crumbly = 2},
    stack_max = 64
})

minetest.register_node("legacycraft:basalt", {
    description = "Basalt",
    tiles = {"legacycraft_basalt.png"},
    groups = {cracky = 2},
    stack_max = 64
})

minetest.register_node("legacycraft:redsand", {
    description = "Red Sand",
    tiles = {"legacycraft_redsand.png"},
    groups = {crumbly = 2},
    stack_max = 64
})

minetest.register_node("legacycraft:redsandstone", {
    description = "Red Sandstone",
    tiles = {
        "legacycraft_redsandstonetop.png",
        "legacycraft_redsandstonebottom.png",
        "legacycraft_redsandstoneside.png",
        "legacycraft_redsandstoneside.png",
        "legacycraft_redsandstoneside.png",
        "legacycraft_redsandstoneside.png",
},
    groups = {cracky = 2},
    stack_max = 64
})

minetest.register_node("legacycraft:coarsedirt", {
    description = "Coarse Dirt",
    tiles = {"legacycraft_coarsedirt.png"},
    groups = {crumbly = 2},
    stack_max = 64
})

-- Generation changes.

-- Replacing river water with water.

minetest.register_on_generated(function(minp, maxp, seed)
    for x = minp.x, maxp.x do
        for y = minp.y, maxp.y do
            for z = minp.z, maxp.z do
                local pos = {x=x, y=y, z=z}
                local node_name = minetest.get_node(pos).name

                if node_name == "default:river_water_source" then
                    minetest.set_node(pos, {name="default:water_source"})
                end
            end
        end
    end
end)

-- Replacing dirt with rainforest litter with coarse dirt.

minetest.register_on_generated(function(minp, maxp, seed)
    for x = minp.x, maxp.x do
        for y = minp.y, maxp.y do
            for z = minp.z, maxp.z do
                local pos = {x=x, y=y, z=z}
                local node_name = minetest.get_node(pos).name

                if node_name == "default:dirt_with_rainforest_litter" then
                    minetest.set_node(pos, {name="legacycraft:coarsedirt"})
                end
            end
        end
    end
end)

-- Replacing dirt with coniferous litter with coarse dirt.

minetest.register_on_generated(function(minp, maxp, seed)
    for x = minp.x, maxp.x do
        for y = minp.y, maxp.y do
            for z = minp.z, maxp.z do
                local pos = {x=x, y=y, z=z}
                local node_name = minetest.get_node(pos).name

                if node_name == "default:dirt_with_coniferous_litter" then
                    minetest.set_node(pos, {name="legacycraft:coarsedirt"})
                end
            end
        end
    end
end)

-- Replacing savanna dirt with sand.

minetest.register_on_generated(function(minp, maxp, seed)
    for x = minp.x, maxp.x do
        for y = minp.y, maxp.y do
            for z = minp.z, maxp.z do
                local pos = {x=x, y=y, z=z}
                local node_name = minetest.get_node(pos).name
            
                if node_name == "default:dry_dirt" then
                    minetest.set_node(pos, {name="default:sand"})
                end
            end
        end
    end
end)

-- Replacing savanna dirt with savanna grass with sand.

minetest.register_on_generated(function(minp, maxp, seed)
    for x = minp.x, maxp.x do
        for y = minp.y, maxp.y do
            for z = minp.z, maxp.z do
                local pos = {x=x, y=y, z=z}
                local node_name = minetest.get_node(pos).name
            
                if node_name == "default:dry_dirt_with_grass" then
                    minetest.set_node(pos, {name="default:sand"})
                end
            end
        end
    end
end)

-- Replacing permafrost with grass.

minetest.register_on_generated(function(minp, maxp, seed)
    for x = minp.x, maxp.x do
        for y = minp.y, maxp.y do
            for z = minp.z, maxp.z do
                local pos = {x=x, y=y, z=z}
                local node_name = minetest.get_node(pos).name
            
                if node_name == "default:permafrost" then
                    minetest.set_node(pos, {name="default:dirt_with_grass"})
                end
            end
        end
    end
end)

-- Replacing permafrost with moss with grass.

minetest.register_on_generated(function(minp, maxp, seed)
    for x = minp.x, maxp.x do
        for y = minp.y, maxp.y do
            for z = minp.z, maxp.z do
                local pos = {x=x, y=y, z=z}
                local node_name = minetest.get_node(pos).name
            
                if node_name == "default:permafrost_with_moss" then
                    minetest.set_node(pos, {name="default:dirt_with_grass"})
                end
            end
        end
    end
end)

-- Replacing permafrost with stones with mossy cobblestone.

minetest.register_on_generated(function(minp, maxp, seed)
    for x = minp.x, maxp.x do
        for y = minp.y, maxp.y do
            for z = minp.z, maxp.z do
                local pos = {x=x, y=y, z=z}
                local node_name = minetest.get_node(pos).name
            
                if node_name == "default:permafrost_with_stones" then
                    minetest.set_node(pos, {name="default:mossycobble"})
                end
            end
        end
    end
end)

-- Replacing desert stone with red sandstone.

minetest.register_on_generated(function(minp, maxp, seed)
    for x = minp.x, maxp.x do
        for y = minp.y, maxp.y do
            for z = minp.z, maxp.z do
                local pos = {x=x, y=y, z=z}
                local node_name = minetest.get_node(pos).name
            
                if node_name == "default:desert_stone" then
                    minetest.set_node(pos, {name="legacycraft:redsandstone"})
                end
            end
        end
    end
end)

-- Replacing desert sandstone with red sandstone.

minetest.register_on_generated(function(minp, maxp, seed)
    for x = minp.x, maxp.x do
        for y = minp.y, maxp.y do
            for z = minp.z, maxp.z do
                local pos = {x=x, y=y, z=z}
                local node_name = minetest.get_node(pos).name
            
                if node_name == "default:desert_sandstone" then
                    minetest.set_node(pos, {name="legacycraft:redsandstone"})
                end
            end
        end
    end
end)

-- Replacing silver sandstone with sandstone.

minetest.register_on_generated(function(minp, maxp, seed)
    for x = minp.x, maxp.x do
        for y = minp.y, maxp.y do
            for z = minp.z, maxp.z do
                local pos = {x=x, y=y, z=z}
                local node_name = minetest.get_node(pos).name
            
                if node_name == "default:silver_sandstone" then
                    minetest.set_node(pos, {name="default:sandstone"})
                end
            end
        end
    end
end)

-- Replacing desert sand with red sand.

minetest.register_on_generated(function(minp, maxp, seed)
    for x = minp.x, maxp.x do
        for y = minp.y, maxp.y do
            for z = minp.z, maxp.z do
                local pos = {x=x, y=y, z=z}
                local node_name = minetest.get_node(pos).name
            
                if node_name == "default:desert_sand" then
                    minetest.set_node(pos, {name="legacycraft:redsand"})
                end
            end
        end
    end
end)

-- Replacing silver sand with sand.

minetest.register_on_generated(function(minp, maxp, seed)
    for x = minp.x, maxp.x do
        for y = minp.y, maxp.y do
            for z = minp.z, maxp.z do
                local pos = {x=x, y=y, z=z}
                local node_name = minetest.get_node(pos).name
            
                if node_name == "default:silver_sand" then
                    minetest.set_node(pos, {name="default:sand"})
                end
            end
        end
    end
end)

-- Replacing cave ice with ice.

minetest.register_on_generated(function(minp, maxp, seed)
    for x = minp.x, maxp.x do
        for y = minp.y, maxp.y do
            for z = minp.z, maxp.z do
                local pos = {x=x, y=y, z=z}
                local node_name = minetest.get_node(pos).name
            
                if node_name == "default:cave_ice" then
                    minetest.set_node(pos, {name="default:ice"})
                end
            end
        end
    end
end)

-- Update 0.2
-- Changelog: https://docs.google.com/document/d/1kA5BYlFnh_dg5r_xg_U32st2cD0TrPtX6Xuw4B1Ypng/edit?usp=sharing
-- Credits: See "credits.txt".

-- Registering modded nodes.

minetest.register_node("legacycraft:cobweb", {
    description = "Cobweb",
    tiles = {"legacycraft_cobweb.png"},
    drawtype = "plantlike",
    paramtype = "light",
    sunlight_propagates = true,
    walkable = false,
    groups = {snappy = 2},
    move_resistance = 7,
    stack_max = 64
})

minetest.register_node("legacycraft:melon", {
    description = "Melon",
    tiles = {
        "legacycraft_melon_topbottom.png",
        "legacycraft_melon_topbottom.png",
        "legacycraft_melon_side.png",
        "legacycraft_melon_side.png",
        "legacycraft_melon_side.png",
        "legacycraft_melon_side.png",
    },
    groups = {oddly_breakable_by_hand = 3},
    stack_max = 64
})

minetest.register_node("legacycraft:pumpkin", {
    description = "Pumpkin",
    tiles = {
        "legacycraft_pumpkin_topbottom.png",
        "legacycraft_pumpkin_topbottom.png",
        "legacycraft_pumpkin_side.png",
        "legacycraft_pumpkin_side.png",
        "legacycraft_pumpkin_side.png",
        "legacycraft_pumpkin_side.png",
    },
    groups = {oddly_breakable_by_hand = 3},
    stack_max = 64
})

minetest.register_node("legacycraft:netherrack", {
    description = "Netherrack",
    tiles = {"legacycraft_netherrack.png"},
    groups = {cracky = 2},
    stack_max = 64
})

minetest.register_node("legacycraft:soulsand", {
    description = "Soul Sand",
    tiles = {"legacycraft_soulsand.png"},
    move_resistance = 7,
    groups = {oddly_breakable_by_hand = 1, crumbly = 4},
    stack_max = 64
})

minetest.register_node("legacycraft:glowstone", {
    description = "Glowstone",
    tiles = {"legacycraft_glowstone.png"},
    groups = {cracky = 2},
    light_source = 14,
    stack_max = 64
})

minetest.register_node("legacycraft:bedrock", {
    description = "Bedrock",
    tiles = {"legacycraft_bedrock.png"},
    stack_max = 64
})

minetest.register_node("legacycraft:jukebox", {
    description = "Jukebox",
    tiles = {
        "legacycraft_jukeboxtop.png",
        "legacycraft_jukeboxsidebottom.png",
        "legacycraft_jukeboxsidebottom.png",
        "legacycraft_jukeboxsidebottom.png",
        "legacycraft_jukeboxsidebottom.png",
        "legacycraft_jukeboxsidebottom.png",
    },
    groups = {choppy = 3},
    stack_max = 64
})

minetest.register_node("legacycraft:noteblock", {
    description = "Note Block",
    tiles = {"legacycraft_noteblock.png"},
    groups = {oddly_breakable_by_hand = 1, choppy = 3},
    stack_max = 64
})

minetest.register_node("legacycraft:slate", {
    description = "Slate",
    tiles = {"legacycraft_slate.png"},
    groups = {cracky = 3},
    stack_max = 64
})

minetest.register_node("legacycraft:limestone", {
    description = "Limestone",
    tiles = {"legacycraft_limestone.png"},
    groups = {cracky = 3},
    stack_max = 64
})

minetest.register_node("legacycraft:marble", {
    description = "Marble",
    tiles = {"legacycraft_marble.png"},
    groups = {cracky = 3},
    stack_max = 64
})

-- Replacing base objects.

-- Cobblestone.

minetest.register_node("legacycraft:cobblestone", {
    description = "Cobblestone",
    tiles = {"legacycraft_cobblestone.png"},
    groups = {cracky = 3},
    stack_max = 64
})

minetest.register_on_generated(function(minp, maxp, seed)
    for x = minp.x, maxp.x do
        for y = minp.y, maxp.y do
            for z = minp.z, maxp.z do
                local pos = {x=x, y=y, z=z}
                local node_name = minetest.get_node(pos).name
            
                if node_name == "default:cobble" then
                    minetest.set_node(pos, {name="legacycraft:cobblestone"})
                end
            end
        end
    end
end)

-- Mossy cobblestone.

minetest.register_node("legacycraft:mossycobblestone", {
    description = "Cobblestone",
    tiles = {"legacycraft_mossycobblestone.png"},
    groups = {cracky = 3},
    stack_max = 64
})

minetest.register_on_generated(function(minp, maxp, seed)
    for x = minp.x, maxp.x do
        for y = minp.y, maxp.y do
            for z = minp.z, maxp.z do
                local pos = {x=x, y=y, z=z}
                local node_name = minetest.get_node(pos).name
            
                if node_name == "default:mossycobble" then
                    minetest.set_node(pos, {name="legacycraft:mossycobblestone"})
                end
            end
        end
    end
end)

-- Bones.

minetest.register_node("legacycraft:boneblock", {
    description = "Bone Block",
    tiles = {
        "legacycraft_boneblocktopbottom.png",
        "legacycraft_boneblocktopbottom.png",
        "legacycraft_boneblockside.png",
        "legacycraft_boneblockside.png",
        "legacycraft_boneblockside.png",
        "legacycraft_boneblockside.png",
    },
    groups = {cracky = 3},
    stack_max = 64
})

minetest.register_on_generated(function(minp, maxp, seed)
    for x = minp.x, maxp.x do
        for y = minp.y, maxp.y do
            for z = minp.z, maxp.z do
                local pos = {x=x, y=y, z=z}
                local node_name = minetest.get_node(pos).name
            
                if node_name == "bones:bones" then
                    minetest.set_node(pos, {name="legacycraft:boneblock"})
                end
            end
        end
    end
end)

-- Oak objects.

minetest.register_node("legacycraft:oaklog", {
    description = "Oak Log",
    tiles = {
        "legacycraft_oaklogtopbottom.png",
        "legacycraft_oaklogtopbottom.png",
        "legacycraft_oaklogside.png",
        "legacycraft_oaklogside.png",
        "legacycraft_oaklogside.png",
        "legacycraft_oaklogside.png",
    },
    groups = {choppy = 3},
    stack_max = 64
})

minetest.register_on_generated(function(minp, maxp, seed)
    for x = minp.x, maxp.x do
        for y = minp.y, maxp.y do
            for z = minp.z, maxp.z do
                local pos = {x=x, y=y, z=z}
                local node_name = minetest.get_node(pos).name
            
                if node_name == "default:tree" then
                    minetest.set_node(pos, {name="legacycraft:oaklog"})
                end
            end
        end
    end
end)

minetest.register_node("legacycraft:oakplanks", {
    description = "Oak Planks",
    tiles = {"legacycraft_oakplanks.png"},
    groups = {choppy = 3},
    stack_max = 64
})

minetest.register_on_generated(function(minp, maxp, seed)
    for x = minp.x, maxp.x do
        for y = minp.y, maxp.y do
            for z = minp.y, maxp.y do
                local pos = {x=x, y=y, z=z}
                local node_name= minetest.get_node(pos).name

                if node_name == "default:wood" then
                    minetest.set_node(pos, {name="legacycraft:oakplanks"})
                end
            end
        end
    end
end)

minetest.register_node("legacycraft:oakleaves", {
    description = "Oak Leaves",
    tiles = {"legacycraft_oakleaves.png"},
    groups = {choppy = 3},
    stack_max = 64
})

minetest.register_on_generated(function(minp, maxp, seed)
    for x = minp.x, maxp.x do
        for y = minp.y, maxp.y do
            for z = minp.y, maxp.y do
                local pos = {x=x, y=y, z=z}
                local node_name = minetest.get_node(pos).name

                if node_name == "default:leaves" then
                    minetest.set_node(pos, {name="legacycraft:oakleaves"})
                end
            end
        end
    end
end)

minetest.register_node("legacycraft:oaksapling", {
    description = "Oak Sapling",
    tiles = {"legacycraft_oaksapling.png"},
    drawtype = "plantlike",
    sunlight_propagates = true,
    walkable = false,
    groups = {choppy = 3},
    stack_max = 64
})

minetest.register_on_generated(function(minp, maxp, seed)
    for x = minp.x, maxp.x do
        for y = minp.y, maxp.y do
            for z = minp.z, maxp.z do
                local pos = {x=x, y=y, z=z}
                local node_name = minetest.get_node(pos).name

                if node_name == "default:sapling" then
                    minetest.set_node(pos, {name="legacycraft:oaksapling"})
                end
            end
        end
    end
end)

minetest.register_node("legacycraft:oakfence", {
    description = "Oak Fence",
    tiles = {"legacycraft_oakplanks.png"},
    drawtype = "fencelike",
    groups = {choppy = 3},
    stack_max = 64
})

minetest.register_on_generated(function(minp, maxp, seed)
    for x = minp.x, maxp.x do
        for y = minp.y, maxp.y do
            for z = minp.z, maxp.z do
                local pos = {x=x, y=y, z=z}
                local node_name = minetest.get_node(pos).name

                if node_name == "default:fence_wood" then
                    minetest.set_node(pos, {name="legacycraft:oakwood"})
                end
            end
        end
    end
end)

-- Spruce objects.

minetest.register_node("legacycraft:sprucelog", {
    description = "Spruce Log",
    tiles = {
        "legacycraft_sprucelogtopbottom.png",
        "legacycraft_sprucelogtopbottom.png",
        "legacycraft_sprucelogside.png",
        "legacycraft_sprucelogside.png",
        "legacycraft_sprucelogside.png",
        "legacycraft_sprucelogside.png",
    },
    groups = {choppy = 3},
    stack_max = 64
})

minetest.register_on_generated(function(minp, maxp, seed)
    for x = minp.x, maxp.x do
        for y = minp.y, maxp.y do
            for z = minp.z, maxp.z do
                local pos = {x=x, y=y, z=z}
                local node_name = minetest.get_node(pos).name
            
                if node_name == "default:pine_tree" then
                    minetest.set_node(pos, {name="legacycraft:sprucelog"})
                end
            end
        end
    end
end)

minetest.register_node("legacycraft:spruceplanks", {
    description = "Spruce Planks",
    tiles = {"legacycraft_spruceplanks.png"},
    groups = {choppy = 3},
    stack_max = 64
})

minetest.register_on_generated(function(minp, maxp, seed)
    for x = minp.x, maxp.x do
        for y = minp.y, maxp.y do
            for z = minp.y, maxp.y do
                local pos = {x=x, y=y, z=z}
                local node_name= minetest.get_node(pos).name

                if node_name == "default:pine_wood" then
                    minetest.set_node(pos, {name="legacycraft:spruceplanks"})
                end
            end
        end
    end
end)

minetest.register_node("legacycraft:spruceleaves", {
    description = "Spruce Leaves",
    tiles = {"legacycraft_spruceleaves.png"},
    groups = {choppy = 3},
    stack_max = 64
})

minetest.register_on_generated(function(minp, maxp, seed)
    for x = minp.x, maxp.x do
        for y = minp.y, maxp.y do
            for z = minp.y, maxp.y do
                local pos = {x=x, y=y, z=z}
                local node_name = minetest.get_node(pos).name

                if node_name == "default:pine_needles" then
                    minetest.set_node(pos, {name="legacycraft:spruceleaves"})
                end
            end
        end
    end
end)

minetest.register_node("legacycraft:sprucesapling", {
    description = "Spruce Sapling",
    tiles = {"legacycraft_sprucesapling.png"},
    drawtype = "plantlike",
    sunlight_propagates = true,
    walkable = false,
    groups = {choppy = 3},
    stack_max = 64
})

minetest.register_on_generated(function(minp, maxp, seed)
    for x = minp.x, maxp.x do
        for y = minp.y, maxp.y do
            for z = minp.z, maxp.z do
                local pos = {x=x, y=y, z=z}
                local node_name = minetest.get_node(pos).name

                if node_name == "default:pine_sapling" then
                    minetest.set_node(pos, {name="legacycraft:sprucesapling"})
                end
            end
        end
    end
end)

minetest.register_node("legacycraft:sprucefence", {
    description = "Spruce Fence",
    tiles = {"legacycraft_spruceplanks.png"},
    drawtype = "fencelike",
    groups = {choppy = 3},
    stack_max = 64
})

minetest.register_on_generated(function(minp, maxp, seed)
    for x = minp.x, maxp.x do
        for y = minp.y, maxp.y do
            for z = minp.z, maxp.z do
                local pos = {x=x, y=y, z=z}
                local node_name = minetest.get_node(pos).name

                if node_name == "default:fence_pine_wood" then
                    minetest.set_node(pos, {name="legacycraft:sprucewood"})
                end
            end
        end
    end
end)

-- Birch objects.

minetest.register_node("legacycraft:birchlog", {
    description = "Birch Log",
    tiles = {
        "legacycraft_birchlogtopbottom.png",
        "legacycraft_birchlogtopbottom.png",
        "legacycraft_birchlogside.png",
        "legacycraft_birchlogside.png",
        "legacycraft_birchlogside.png",
        "legacycraft_birchlogside.png",
    },
    groups = {choppy = 3},
    stack_max = 64
})

minetest.register_on_generated(function(minp, maxp, seed)
    for x = minp.x, maxp.x do
        for y = minp.y, maxp.y do
            for z = minp.z, maxp.z do
                local pos = {x=x, y=y, z=z}
                local node_name = minetest.get_node(pos).name
            
                if node_name == "default:aspen_tree" then
                    minetest.set_node(pos, {name="legacycraft:birchlog"})
                end
            end
        end
    end
end)

minetest.register_node("legacycraft:birchplanks", {
    description = "Birch Planks",
    tiles = {"legacycraft_birchplanks.png"},
    groups = {choppy = 3},
    stack_max = 64
})

minetest.register_on_generated(function(minp, maxp, seed)
    for x = minp.x, maxp.x do
        for y = minp.y, maxp.y do
            for z = minp.y, maxp.y do
                local pos = {x=x, y=y, z=z}
                local node_name= minetest.get_node(pos).name

                if node_name == "default:aspen_wood" then
                    minetest.set_node(pos, {name="legacycraft:birchplanks"})
                end
            end
        end
    end
end)

minetest.register_node("legacycraft:birchleaves", {
    description = "Birch Leaves",
    tiles = {"legacycraft_birchleaves.png"},
    groups = {choppy = 3},
    stack_max = 64
})

minetest.register_on_generated(function(minp, maxp, seed)
    for x = minp.x, maxp.x do
        for y = minp.y, maxp.y do
            for z = minp.y, maxp.y do
                local pos = {x=x, y=y, z=z}
                local node_name = minetest.get_node(pos).name

                if node_name == "default:aspen_leaves" then
                    minetest.set_node(pos, {name="legacycraft:birchleaves"})
                end
            end
        end
    end
end)

minetest.register_node("legacycraft:birchsapling", {
    description = "Birch Sapling",
    tiles = {"legacycraft_birchsapling.png"},
    drawtype = "plantlike",
    sunlight_propagates = true,
    walkable = false,
    groups = {choppy = 3},
    stack_max = 64
})

minetest.register_on_generated(function(minp, maxp, seed)
    for x = minp.x, maxp.x do
        for y = minp.y, maxp.y do
            for z = minp.z, maxp.z do
                local pos = {x=x, y=y, z=z}
                local node_name = minetest.get_node(pos).name

                if node_name == "default:aspen_sapling" then
                    minetest.set_node(pos, {name="legacycraft:birchsapling"})
                end
            end
        end
    end
end)

minetest.register_node("legacycraft:birchfence", {
    description = "Birch Fence",
    tiles = {"legacycraft_birchplanks.png"},
    drawtype = "fencelike",
    groups = {choppy = 3},
    stack_max = 64
})

minetest.register_on_generated(function(minp, maxp, seed)
    for x = minp.x, maxp.x do
        for y = minp.y, maxp.y do
            for z = minp.z, maxp.z do
                local pos = {x=x, y=y, z=z}
                local node_name = minetest.get_node(pos).name

                if node_name == "default:fence_aspen_wood" then
                    minetest.set_node(pos, {name="legacycraft:birchwood"})
                end
            end
        end
    end
end)


-- Dark oak objects.

minetest.register_node("legacycraft:darkoaklog", {
    description = "Dark Oak Log",
    tiles = {
        "legacycraft_darkoaklogtopbottom.png",
        "legacycraft_darkoaklogtopbottom.png",
        "legacycraft_darkoaklogside.png",
        "legacycraft_darkoaklogside.png",
        "legacycraft_darkoaklogside.png",
        "legacycraft_darkoaklogside.png",
    },
    groups = {choppy = 3},
    stack_max = 64
})

minetest.register_on_generated(function(minp, maxp, seed)
    for x = minp.x, maxp.x do
        for y = minp.y, maxp.y do
            for z = minp.z, maxp.z do
                local pos = {x=x, y=y, z=z}
                local node_name = minetest.get_node(pos).name
            
                if node_name == "default:tree" then
                    minetest.set_node(pos, {name="legacycraft:darkoaklog"})
                end
            end
        end
    end
end)

minetest.register_node("legacycraft:darkoakplanks", {
    description = "Dark Oak Planks",
    tiles = {"legacycraft_darkoakplanks.png"},
    groups = {choppy = 3},
    stack_max = 64
})

minetest.register_on_generated(function(minp, maxp, seed)
    for x = minp.x, maxp.x do
        for y = minp.y, maxp.y do
            for z = minp.y, maxp.y do
                local pos = {x=x, y=y, z=z}
                local node_name= minetest.get_node(pos).name

                if node_name == "default:wood" then
                    minetest.set_node(pos, {name="legacycraft:darkoakplanks"})
                end
            end
        end
    end
end)

minetest.register_node("legacycraft:darkoakleaves", {
    description = "Dark Oak Leaves",
    tiles = {"legacycraft_darkoakleaves.png"},
    groups = {choppy = 3},
    stack_max = 64
})

minetest.register_on_generated(function(minp, maxp, seed)
    for x = minp.x, maxp.x do
        for y = minp.y, maxp.y do
            for z = minp.y, maxp.y do
                local pos = {x=x, y=y, z=z}
                local node_name = minetest.get_node(pos).name

                if node_name == "default:leaves" then
                    minetest.set_node(pos, {name="legacycraft:darkoakleaves"})
                end
            end
        end
    end
end)

minetest.register_node("legacycraft:darkoaksapling", {
    description = "Dark Oak Sapling",
    tiles = {"legacycraft_darkoaksapling.png"},
    drawtype = "plantlike",
    sunlight_propagates = true,
    walkable = false,
    groups = {choppy = 3},
    stack_max = 64
})

minetest.register_on_generated(function(minp, maxp, seed)
    for x = minp.x, maxp.x do
        for y = minp.y, maxp.y do
            for z = minp.z, maxp.z do
                local pos = {x=x, y=y, z=z}
                local node_name = minetest.get_node(pos).name

                if node_name == "default:sapling" then
                    minetest.set_node(pos, {name="legacycraft:darkoaksapling"})
                end
            end
        end
    end
end)

minetest.register_node("legacycraft:darkoakfence", {
    description = "Dark Oak Fence",
    tiles = {"legacycraft_darkoakplanks.png"},
    drawtype = "fencelike",
    groups = {choppy = 3},
    stack_max = 64
})

minetest.register_on_generated(function(minp, maxp, seed)
    for x = minp.x, maxp.x do
        for y = minp.y, maxp.y do
            for z = minp.z, maxp.z do
                local pos = {x=x, y=y, z=z}
                local node_name = minetest.get_node(pos).name

                if node_name == "default:fence_wood" then
                    minetest.set_node(pos, {name="legacycraft:darkoakwood"})
                end
            end
        end
    end
end)

-- Update 0.3: The Bare Minimum Update Part II
-- Changelog: https://docs.google.com/document/d/1kA5BYlFnh_dg5r_xg_U32st2cD0TrPtX6Xuw4B1Ypng/edit?usp=sharing
-- Credits: See "credits.txt".

--Registering modded nodes.

minetest.register_node("legacycraft:sand", {
    description = "Sand",
    tiles = {"legacycraft_sand.png"},
    groups = {crumbly = 3},
    stack_max = 64
})

minetest.register_node("legacycraft:gravel", {
    description = "Gravel",
    tiles = {"legacycraft_gravel.png"},
    groups = {crumbly = 3},
    stack_max = 64
})

minetest.register_node("legacycraft:goldore", {
    description = "Gold Ore",
    tiles = {"legacycraft_goldore.png"},
    groups = {cracky = 3},
    stack_max = 64
})

minetest.register_node("legacycraft:ironore", {
    description = "Iron Ore",
    tiles = {"legacycraft_ironore.png"},
    groups = {cracky = 3},
    stack_max = 64
})

minetest.register_node("legacycraft:coalore", {
    description = "Coal Ore",
    tiles = {"legacycraft_coalore.png"},
    groups = {cracky = 3},
    stack_max = 64
})

minetest.register_node("legacycraft:whitewool", {
    description = "White Wool",
    tiles = {"legacycraft_whitewool.png"},
    groups = {oddly_breakable_by_hand = 3},
    stack_max = 64
})

minetest.register_node("legacycraft:lightgraywool", {
    description = "Light Gray Wool",
    tiles = {"legacycraft_graywool.png"},
    groups = {oddly_breakable_by_hand = 3},
    stack_max = 64
})

minetest.register_node("legacycraft:darkgraywool", {
    description = "Dark Gray Wool",
    tiles = {"legacycraft_darkgraywool.png"},
    groups = {oddly_breakable_by_hand = 3},
    stack_max = 64
})

minetest.register_node("legacycraft:redwool", {
    description = "Red Wool",
    tiles = {"legacycraft_redwool.png"},
    groups = {oddly_breakable_by_hand = 3},
    stack_max = 64
})

minetest.register_node("legacycraft:orangewool", {
    description = "Orange Wool",
    tiles = {"legacycraft_orangewool.png"},
    groups = {oddly_breakable_by_hand = 3},
    stack_max = 64
})

minetest.register_node("legacycraft:yellowwool", {
    description = "Yellow Wool",
    tiles = {"legacycraft_yellowwool.png"},
    groups = {oddly_breakable_by_hand = 3},
    stack_max = 64
})

minetest.register_node("legacycraft:greenwool", {
    description = "Green Wool",
    tiles = {"legacycraft_greenwool.png"},
    groups = {oddly_breakable_by_hand = 3},
    stack_max = 64
})

minetest.register_node("legacycraft:purplewool", {
    description = "Purple Wool",
    tiles = {"legacycraft_purplewool.png"},
    groups = {oddly_breakable_by_hand = 3},
    stack_max = 64
})

minetest.register_node("legacycraft:goldblock", {
    description = "Gold Block",
    tiles = {"legacycraft_goldblock.png"},
    groups = {cracky = 3},
    stack_max = 64
})

minetest.register_node("legacycraft:stoneslab", {
    description = "Stone Slab",
    tiles = {
        "legacycraft_stoneslabtopbottom.png",
        "legacycraft_stoneslabtopbottom.png",
        "legacycraft_stoneslabside.png",
        "legacycraft_stoneslabside.png",
        "legacycraft_stoneslabside.png",
        "legacycraft_stoneslabside.png",
    },
    paramtype = "light",
    paramtype2 = "facedir",
    groups ={cracky = 3},
    drawtype = "nodebox",
    stack_max = 64,
    node_box = {
        type = "fixed",
        fixed = {
            {-0.5, -0.5, -0.5, 0.5, 0, 0.5},
        },
    },
})

minetest.register_node("legacycraft:ironblock", {
    description = "Iron Block",
    tiles = {"legacycraft_ironblock.png"},
    groups = {cracky = 3},
    stack_max = 64
})

minetest.register_node("legacycraft:mossycobblestone", {
    description = "Mossy Cobblestone",
    tiles = {"legacycraft_mossycobblestone.png"},
    groups = {cracky = 3},
    stack_max = 64
})

minetest.register_node("legacycraft:bricks", {
    description = "Bricks",
    tiles = {"legacycraft_bricks.png"},
    groups = {cracky = 3},
    stack_max = 64
})

minetest.register_node("legacycraft:bookshelf", {
    description = "Bookshelf",
    tiles = {
        "legacycraft_oakplanks.png",
        "legacycraft_oakplanks.png",
        "legacycraft_bookshelf.png",
        "legacycraft_bookshelf.png",
        "legacycraft_bookshelf.png",
        "legacycraft_bookshelf.png",
    },
    groups = {choppy = 3},
    stack_max = 64
})

minetest.register_node("legacycraft:obsidian", {
    description = "Obsidian",
    tiles = {"legacycraft_obsidian.png"},
    groups = {cracky = 3},
    stack_max = 64
})