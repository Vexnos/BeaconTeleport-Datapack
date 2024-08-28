scoreboard players enable @a t_crownPeak
scoreboard players enable @a t_felora
scoreboard players enable @a t_tartarus
scoreboard players enable @a t_hyperia
scoreboard players enable @a t_hailstone
scoreboard players enable @a t_oakendale
scoreboard players enable @a t_meridian
execute as @a[scores={t_crownPeak=1..}] run function beacon:crownpeak
execute as @a[scores={t_felora=1..}] run function beacon:felora
execute as @a[scores={t_tartarus=1..}] run function beacon:tartarus
execute as @a[scores={t_hyperia=1..}] run function beacon:hyperia
execute as @a[scores={t_oakendale=1..}] run function beacon:oakendale
execute as @a[scores={t_hailstone=1..}] run function beacon:hailstone
execute as @a[scores={t_meridian=1..}] run function beacon:meridian