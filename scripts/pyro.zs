import mods.pyrotech.StoneCrucible;
import mods.pyrotech.BrickCrucible;
import mods.pyrotech.SoakingPot;
import mods.pyrotech.CrudeDryingRack;
import mods.pyrotech.GraniteAnvil;
import mods.pyrotech.PitKiln;
import mods.pyrotech.IroncladAnvil;

StoneCrucible.addRecipe(
  "waterstone",                // unique recipe name
  <liquid:water> * 1000,        // recipe output
  <minecraft:dirt>,          // recipe input
  1200
);
BrickCrucible.addRecipe(
  "waterbrick",                // unique recipe name
  <liquid:water> * 1000,        // recipe output
  <minecraft:dirt>,          // recipe input
  1200 // true if the recipe should be inherited
);

SoakingPot.addRecipe(
  "steel_rocession1",             // unique recipe name
  <contenttweaker:cluster_steel>,       // recipe output
  <liquid:molten_iron> * 4000, // input fluid
  <pyrotech:material:1> * 3,   // input item
  1200            // recipe duration in ticks
);

SoakingPot.addRecipe(
  "steel_procession2",             // unique recipe name
  <contenttweaker:cluster_steel>,       // recipe output
  <liquid:molten_iron> * 4000, // input fluid
  <immersiveengineering:material:6> * 3,   // input item
  1200            // recipe duration in ticks
);

SoakingPot.addRecipe(
  "iron_procession",             // unique recipe name
  <contenttweaker:cluster_iron>,       // recipe output
  <liquid:molten_iron> * 2000, // input fluid
  <pyrotech:material:22> * 3,   // input item
  1200            // recipe duration in ticks
);

GraniteAnvil.addRecipe("iron_process1", <contenttweaker:material_part:106>, <contenttweaker:cluster_iron>, 12, "hammer");


IroncladAnvil.addRecipe("iron_process2", <contenttweaker:material_part:106>, <contenttweaker:cluster_iron>, 10, "hammer");

recipes.remove(<pyrotech:soaking_pot>);
recipes.addShaped(<pyrotech:soaking_pot>, [[<minecraft:iron_ingot>, null, <minecraft:iron_ingot>],[<minecraft:planks>, <minecraft:iron_ingot>, <minecraft:planks>], [<minecraft:planks>, <minecraft:iron_ingot>, <minecraft:planks>]]);