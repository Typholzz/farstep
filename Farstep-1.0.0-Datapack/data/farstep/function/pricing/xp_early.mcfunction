scoreboard players set #coefficient farstep_tmp 1
scoreboard players operation #available farstep_tmp *= #coefficient farstep_tmp
scoreboard players set #coefficient farstep_tmp 6
scoreboard players operation #coefficient farstep_tmp *= #xp_level farstep_tmp
scoreboard players operation #available farstep_tmp += #coefficient farstep_tmp
scoreboard players add #available farstep_tmp 0
