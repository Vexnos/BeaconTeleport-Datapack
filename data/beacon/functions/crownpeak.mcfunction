execute positioned -704 100 579 run tag @a[distance=..15] add travelling
execute at @a[tag=travelling] run playsound beacon:beaconteleport master @a[tag=travelling]
execute at @a[tag=travelling] run playsound block.beacon.power_select master @a[tag=!travelling]
scoreboard players set crownPeak crownPeak 1
schedule function beacon:travel 9s