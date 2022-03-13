if (global.scoreLeft == global.pointsToWin) {
	// TODO: player wins
	global.isNight = false;
}
else if (global.scoreRight == global.pointsToWin) {
	// TODO: computer wins
}

if (global.scoreLeft == global.pointsToWin - 1) {
	global.isNight = true;	
}