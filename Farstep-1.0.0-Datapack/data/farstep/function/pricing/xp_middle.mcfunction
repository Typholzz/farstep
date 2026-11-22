scoreboard players set #coefficient farstep_tmp 5
scoreboard players operation #available farstep_tmp *= #coefficient farstep_tmp
scoreboard players set #coefficient farstep_tmp -81
scoreboard players operation #coefficient farstep_tmp *= #xp_level farstep_tmp
scoreboard players operation #available farstep_tmp += #coefficient farstep_tmp
scoreboard players add #available farstep_tmp 720
scoreboard players operation #available farstep_tmp /= #2 farstep_tmp
