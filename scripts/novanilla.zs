import crafttweaker.item.IItemStack;
import crafttweaker.event.PlayerInteractBlockEvent;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.block.IBlock;

static rcBannedArray as string[] = [
    "minecraft:crafting_table",
    "minecraft:furnace"
];
events.onPlayerInteractBlock(function(event as PlayerInteractBlockEvent){
    if (event.player.world.remote)
        return;
    if (rcBannedArray has event.block.definition.id && !event.player.creative){
        event.cancel();
        event.player.sendChat("§c该方块已被禁用！§r");
    }
});