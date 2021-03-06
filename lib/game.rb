class Game
  attr_reader :player, :player_weapon, :opponent_weapon

  def initialize(player,weapons)
    @player = player
    @weapons = weapons
    @player_weapon = nil
    @opponent_weapon = nil
  end

  def player_name
    @player.name
  end

  def attack(weapon)
    @player_weapon = weapon
    @opponent_weapon = @weapons.random_weapon
  end

  def result
    @weapons.result(@player_weapon, @opponent_weapon)
  end

  def self.add(game)
    games[game.object_id] = game
  end

  def self.find(id)
    games[id]
  end

  def self.games
    @games ||= {}
  end
end