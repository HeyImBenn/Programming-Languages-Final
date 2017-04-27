
------------------------------- Setting up types
type alias Player =
  { direction : float }

type Direction =
  { Left | Right | Still }

type alias Game =
  { player : Player,
    direction : Direction,
    keyboardModel : Keyboard.Model }

------------------------------- Setting up game window size
(gameWidth, gameHeight) = (1024, 576)

------------------------------- Setting up the player's charectaristics
playerRadius : Float
playerRadius = gameWidth / 10
playerSize : Float
playerSize = 10
playerSpeed : Float
playerSpeed = 0.12
backgroundColor : Color
backgroundColor = rgb 20 20 20

------------------------------- Setting up player movement
updatePlayerDirection : Float -> Direction -> Float
updatePlayerAngle direction =
  let sign =
    if direction == Left then 1
    else if direction == Right then -1
    else 0
updatePlayer : Direction -> Game -> Player
