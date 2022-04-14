function PlayerCollision(){
	
	var _collision = false;
	
	//Horiziontal Tiles
	if (tilemap_get_at_pixel(collisionMap, x + hSpeed, y)) {
		
		x -= x mod TILE_SIZE;
		
		if (sign(hSpeed) == 1) x += -1 + TILE_SIZE;
		
		hSpeed = 0;
		_collision = true;
	}
	
	//Horizontal Move Commit
	x += hSpeed;
	
	
	//Vertical Tiles
	if (tilemap_get_at_pixel(collisionMap, x, y + vSpeed)) {
		
		y -= y mod TILE_SIZE;
		
		if (sign(vSpeed) == 1) y += -1 + TILE_SIZE;
		
		vSpeed = 0;
		_collision = true;
	}
	
	//Vertical Move Commit
	y += vSpeed;
	
	return _collision;
}