effect give @a[tag=travelling] levitation infinite 49 true
effect give @a[tag=travelling] glowing 8 0 true
effect give @a[tag=travelling] blindness 8 0 true
effect give @a[tag=travelling] nausea 8 0 true
effect give @a[tag=travelling] resistance 10 9 true
execute at @a run playsound block.beacon.power_select master @a[tag=!travelling]
execute if score crownPeak crownPeak matches 1.. run schedule function beacon:crownpeakarrive 4s
execute if score felora felora matches 1.. run schedule function beacon:feloraarrive 4s
execute if score tartarus tartarus matches 1.. run schedule function beacon:tartarusarrive 4s
execute if score hailstone hailstone matches 1.. run schedule function beacon:hailstonearrive 4s
execute if score oakendale oakendale matches 1.. run schedule function beacon:oakendalearrive 4s
execute if score hyperia hyperia matches 1.. run schedule function beacon:hyperiaarrive 4s
execute if score meridian meridian matches 1.. run schedule function beacon:meridianarrive 4s