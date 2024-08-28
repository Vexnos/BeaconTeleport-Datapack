execute positioned -704 100 579 run tag @a[distance=..10,scores={xp=1..}] add travelling
execute positioned -55 39 2434 run tag @a[distance=..10,scores={xp=1..}] add travelling
execute positioned 1843 110 -289 run tag @a[distance=..10,scores={xp=1..}] add travelling
execute positioned -3806 103 -64 run tag @a[distance=..10,scores={xp=1..}] add travelling
execute positioned -1291 91 -1301 run tag @a[distance=..10,scores={xp=1..}] add travelling
execute positioned 61 86 4606 run tag @a[distance=..10,scores={xp=1..}] add travelling
execute positioned -734 133 -4043 run tag @a[distance=..10,scores={xp=1..}] add travelling

execute positioned -704 100 579 run title @a[distance=..10,scores={xp=0}] actionbar {"text":"Not enough XP!","color":"red"}
execute positioned -55 39 2434 run title @a[distance=..10,scores={xp=0}] actionbar {"text":"Not enough XP!","color":"red"}
execute positioned 1843 110 -289 run title @a[distance=..10,scores={xp=0}] actionbar {"text":"Not enough XP!","color":"red"}
execute positioned -3806 103 -64 run title @a[distance=..10,scores={xp=0}] actionbar {"text":"Not enough XP!","color":"red"}
execute positioned -1291 91 -1301 run title @a[distance=..10,scores={xp=0}] actionbar {"text":"Not enough XP!","color":"red"}
execute positioned 61 86 4606 run title @a[distance=..10,scores={xp=0}] actionbar {"text":"Not enough XP!","color":"red"}
execute positioned -734 133 -4043 run title @a[distance=..10,scores={xp=0}] actionbar {"text":"Not enough XP!","color":"red"}

execute positioned -704 100 579 run playsound @a[distance=..10,scores={xp=0}]
execute positioned -55 39 2434 run title @a[distance=..10,scores={xp=0}] actionbar {"text":"Not enough XP!","color":"red"}
execute positioned 1843 110 -289 run title @a[distance=..10,scores={xp=0}] actionbar {"text":"Not enough XP!","color":"red"}
execute positioned -3806 103 -64 run title @a[distance=..10,scores={xp=0}] actionbar {"text":"Not enough XP!","color":"red"}
execute positioned -1291 91 -1301 run title @a[distance=..10,scores={xp=0}] actionbar {"text":"Not enough XP!","color":"red"}
execute positioned 61 86 4606 run title @a[distance=..10,scores={xp=0}] actionbar {"text":"Not enough XP!","color":"red"}
execute positioned -734 133 -4043 run title @a[distance=..10,scores={xp=0}] actionbar {"text":"Not enough XP!","color":"red"}

execute at @a[tag=travelling] run playsound beacon:beaconteleport master @a[tag=travelling]
execute at @a[tag=travelling,scores={xp=1..}] run playsound minecraft:entity.experience_orb.pickup master @a[tag=travelling]

xp add @a[tag=travelling,scores={xp=1..}] -1 levels

scoreboard players set crownPeak crownPeak 1
schedule function beacon:travel 9s