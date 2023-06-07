extends Node

var bulletInstanceCount = 0
var enemyBulletInstanceCount = 0

var scoringInformation = {
	"currentScore": 0,
	"currentPlayer": "User",
	"highScore": [0,0,0],
	"highScorePlayersName" : "Winner"
}

var Player
var automaticfiring = false
var singleLife = false
