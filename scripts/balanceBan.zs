import crafttweaker.api.IClient;
import crafttweaker.player.IPlayer;
import crafttweaker.item.IIngredient;

recipes.remove(<libvulpes:coalgenerator>);
recipes.remove(<minecraft:chest>);
recipes.addShaped(<minecraft:chest>, [[null, null, null],[<pyrotech:crate>, <pyrotech:crate>, <pyrotech:crate>], [null, null, null]]);
recipes.remove(<rftools:coalgenerator>);
recipes.remove(<rftools:environmental_controller>);
recipes.remove(<minecraft:bed:*>);

recipes.remove(<minecraft:chest> * 4);
recipes.remove(<nuclearcraft:water_source_compact>);
recipes.remove(<nuclearcraft:water_source>);
recipes.remove(<nuclearcraft:water_source_dense>);
recipes.remove(<engineersdecor:iron_inset_light>);
recipes.remove(<engineersdecor:iron_floor_edge_light>);
recipes.remove(<advancedrocketry:thermitetorch>);
mods.nuclearcraft.Infuser.removeRecipeWithOutput(<nuclearcraft:water_source>);

recipes.remove(<immersiveengineering:metal_decoration2:4>);
recipes.addShaped(<immersiveengineering:metal_decoration2:4>, [[<immersiveengineering:metal:39>, <immersiveengineering:metal:39>, <immersiveengineering:metal:39>],[<minecraft:glass_pane>, <immersiveengineering:material:22>, <minecraft:glass_pane>], [<immersiveengineering:metal:39>, <nuclearcraft:rtg_plutonium>, <immersiveengineering:metal:39>]]);
recipes.remove(<fossil:skull_lantern>);


recipes.remove(<matteroverdrive:decorative.tritanium_lamp>);
recipes.remove(<matteroverdrive:decorative.tritanium_lamp:1>);
recipes.remove(<mts:streetlight>);
recipes.remove(<minecraft:redstone_lamp>);
recipes.remove(<immersiveengineering:tool>);
recipes.addShaped(<immersiveengineering:tool>, [[null, <ore:ingotCopper>, <minecraft:string>],[null, <minecraft:stick>, <ore:ingotCopper>], [<minecraft:stick>, null, null]]);

recipes.replaceAllOccurences(<enderio:item_material:20>, <matteroverdrive:isolinear_circuit:1>);

recipes.replaceAllOccurences(<minecraft:glass_bottle>,<contenttweaker:bottle> );