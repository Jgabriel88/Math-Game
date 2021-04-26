class Player

  attr_reader  :name, :lives
  attr_writer  :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def lose_life()
    @lives -= 1
  end

  def switch_player()
    if @current_player.name == "Player 1"
      @current_player = p2
    else
      @current_player = p1
    end
  end
end



