global.partSystem = part_system_create();
part_system_depth(global.partSystem, -100);

global.scoreLeft = 0;
global.scoreRight = 0;
global.isNight = false;
global.pointsToWin = 2;
global.isMatchOver = false;
global.isLeftWon = false;
global.isRightWon = false;

isPaused = false;
pausedSurf = -1;