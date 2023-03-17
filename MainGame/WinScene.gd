extends Control


func _ready():
	GlobalVariables.scoringInformation["highScores"].sort()
	
	var highScorePosition = GlobalVariables.scoringInformation["highScores"].bsearch(GlobalVariables.scoringInformation["currentScore"], true)
	print ("position #", highScorePosition)
	
	GlobalVariables.scoringInformation["highScores"].insert(highScorePosition, GlobalVariables.scoringInformation["currentscore"])
	
	GlobalVariables.scoringInformation["highScores"].remove(0)
	
	print(GlobalVariables.scoringInformation["highScores"])
