var _depth = (aim_dir > 0 and aim_dir < 180)
bow.depth = depth + _depth

bow.x = x+ lengthdir_x(bow_dis,aim_dir)
bow.y = y + lengthdir_y(bow_dis,aim_dir)

bow_dis = lerp(bow_dis,11,0.1);