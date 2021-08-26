import crafttweaker.entity.IEntity;
import crafttweaker.player.IPlayer;
import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerTickEvent;

function runCommand (command as string) {
    val s = server.commandManager;
    s.executeCommand(server,command);
}

events.PlayerTickEvent(function(event as PlayerTickEvent){
    var player as IPlayer = event.player;
    if (player.getDimension() == 0 && player.y >= 200 && 	!player.currentItem.matches(<adpother:iron_respirator>))
    {
    runCommand("kill " + player.name);
    }
});
