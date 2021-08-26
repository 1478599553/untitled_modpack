import mods.zenstages.ZenStager;
import mods.compatskills.Skill;

var FullMapStage = ZenStager.initStage("FullMap");
mods.jmapstages.JMapStages.setFullscreenStage("FullMap");

var MiniMapStage = ZenStager.initStage("MiniMap");
mods.jmapstages.JMapStages.setMinimapStage("MiniMap");

var DeathPoint = ZenStager.initStage("DeathPoint");
mods.jmapstages.JMapStages.setDeathpointStage("DeathPoint");

var WayPoint = ZenStager.initStage("WayPoint");
mods.jmapstages.JMapStages.setWaypointStage("WayPoint");

var banana = mods.compatskills.SkillCreator.createSkill("seek", "textures/blocks/stonebrick.png");
