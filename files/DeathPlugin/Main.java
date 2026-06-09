package me.robin.deathplugin;

import org.bukkit.Bukkit;
import org.bukkit.entity.Player;
import org.bukkit.event.EventHandler;
import org.bukkit.event.Listener;
import org.bukkit.event.entity.PlayerDeathEvent;
import org.bukkit.plugin.java.JavaPlugin;

public class Main extends JavaPlugin implements Listener {

    @Override
    public void onEnable() {
        // Dem Server sagen, dass dieses Plugin auf Events lauschen soll
        Bukkit.getPluginManager().registerEvents(this, this);
        getLogger().info("DeathPlugin erfolgreich aktiviert!");
    }

    @EventHandler
    public void onPlayerDeath(PlayerDeathEvent event) {
        // Den Spieler holen, der gerade gestorben ist
        Player player = event.getEntity();
        
        // HIER den genauen Namen des Spielers eintragen (Groß-/Kleinschreibung ist egal)
        if (player.getName().equalsIgnoreCase("Nebula888")) {
            
            // Die originale Todesnachricht mit deinem Text überschreiben
            event.setDeathMessage(player.getName() + " is too Bad at the game");
        }
    }
}
