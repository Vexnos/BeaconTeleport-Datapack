scoreboard players reset @a t_felora

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

execute positioned -704 100 579 run playsound minecraft:entity.wolf.growl master @a[distance=..10,scores={xp=0}]
execute positioned -55 39 2434 run playsound minecraft:entity.wolf.growl master @a[distance=..10,scores={xp=0}]
execute positioned 1843 110 -289 run playsound minecraft:entity.wolf.growl master @a[distance=..10,scores={xp=0}]
execute positioned -3806 103 -64 run playsound minecraft:entity.wolf.growl master @a[distance=..10,scores={xp=0}]
execute positioned -1291 91 -1301 run playsound minecraft:entity.wolf.growl master @a[distance=..10,scores={xp=0}]
execute positioned 61 86 4606 run playsound minecraft:entity.wolf.growl master @a[distance=..10,scores={xp=0}]
execute positioned -734 133 -4043 run playsound minecraft:entity.wolf.growl master @a[distance=..10,scores={xp=0}]

execute at @a[tag=travelling] run playsound beacon:beaconteleport master @a[tag=travelling]
execute at @a[tag=travelling,scores={xp=1..}] run playsound minecraft:entity.experience_orb.pickup master @a[tag=travelling]

xp add @a[tag=travelling,scores={xp=1..}] -1 levels

execute as @a[tag=travelling] run scoreboard players add travellers travellers 1

execute if score travellers travellers matches 1.. run scoreboard players set felora felora 1
execute if score travellers travellers matches 1.. run title @a[tag=travelling] actionbar ["",{"text":"Travelling to ","color":"green"},{"text":"Felora","color":"green"},{"text":" standby...","color":"green"}]
execute if score travellers travellers matches 1.. run schedule function beacon:travel 9s