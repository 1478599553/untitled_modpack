#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.IItemRightClick;
import mods.contenttweaker.Commands;
import mods.contenttweaker.ItemFood;
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Material;
import mods.contenttweaker.PartBuilder;

var bottle = VanillaFactory.createItem("bottle");
bottle.maxStackSize = 64;
bottle.register();

var cactuspie = VanillaFactory.createItemFood("cactuspie",4);
cactuspie.register();

var clustersteel = VanillaFactory.createItem("cluster_steel");
clustersteel.maxStackSize = 64;
clustersteel.register();

var clusteriron = VanillaFactory.createItem("cluster_iron");
clusteriron.maxStackSize = 64;
clusteriron.register();

//part builder
var cluster = mods.contenttweaker.MaterialSystem.getPartBuilder();
cluster.setName("cluster");
cluster.setPartType(MaterialSystem.getPartType("item"));
var clusterPart = cluster.build();

var denseIngotPart = mods.contenttweaker.MaterialSystem.getPartBuilder().setName("dense_ingot").setPartType(mods.contenttweaker.MaterialSystem.getPartType("item")).setOreDictName("superIngot").build();
//end


	//////////
	// Calls
	//////////

	
	//////////////
	// Variables
	//////////////
	var copper = MaterialSystem.getMaterialBuilder().setName("Copper").setColor(15766817).build();
	var tin = MaterialSystem.getMaterialBuilder().setName("Tin").setColor(10275286).build();
    var iron = MaterialSystem.getMaterialBuilder().setName("Iron").setColor(15592941).build();
	var lead = MaterialSystem.getMaterialBuilder().setName("Lead").setColor(5658219).build();
	var cobalt = MaterialSystem.getMaterialBuilder().setName("Cobalt").setColor(18347).build();
	
	var metal_list = [copper, tin, iron, lead, cobalt] as Material[];
	var part_names = ["dirty_dust","cluster"] as string[]; //"gear", "plate", "nugget", "ingot", "beam", "bolt"
	//var ore_types = ["ore", "poor_ore", "dense_ore"] as string[];
	
	///////////////////////////
	// Material registration
	///////////////////////////
	
	for i, metal in metal_list {
	    metal.registerParts(part_names);
	
	    var ores = metal.registerParts(ore_types);
	    for i, ore in ores {
	        var oreData = ore.getData();
	        oreData.addDataValue("variants", "minecraft:stone,minecraft:end_stone,minecraft:netherrack");
	        oreData.addDataValue("hardness", "3,3,3");
	        oreData.addDataValue("resistance", "15,15,15");
	        oreData.addDataValue("harvestTool", "pickaxe,pickaxe,pickaxe");
	        oreData.addDataValue("harvestLevel", "1,1,1");
	    }
	
	    var blockData = metal.registerPart("block").getData();
	    blockData.addDataValue("hardness", "5");
	    blockData.addDataValue("resistance", "30");
	    blockData.addDataValue("harvestTool", "pickaxe");
	    blockData.addDataValue("harvestLevel", "1");
	}



var twinecoil = VanillaFactory.createItem("twine_coil");
twinecoil.maxStackSize = 64;
twinecoil.register();

var durabletwinecoil = VanillaFactory.createItem("twine_durable_coil");
durabletwinecoil.maxStackSize = 64;
durabletwinecoil.register();