execute positioned -704 100 579 run tag @a[distance=..10] add travelling
execute positioned -55 39 2434 run tag @a[distance=..10] add travelling
execute positioned 1843 110 -289 run tag @a[distance=..10] add travelling
execute positioned -3806 103 -64 run tag @a[distance=..10] add travelling
execute positioned -1291 91 -1301 run tag @a[distance=..10] add travelling
execute positioned 61 86 4606 run tag @a[distance=..10] add travelling
execute positioned -734 133 -4043 run tag @a[distance=..10] add travelling
execute at @a[tag=travelling] run playsound beacon:beaconteleport master @a[tag=travelling]
scoreboard players set meridian meridian 1
schedule function beacon:travel 9s