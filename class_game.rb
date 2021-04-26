require './class_players.rb'
require './class_questions.rb'

class Game

  def initialize()
    @questioner = Question.new
    @p1 = Player.new("Player 1")
    @p2 = Player.new("Player 2")
    @current_player = @p1
  end

  def player_switcher()
    if @current_player.name == "Player 1"
      @current_player = @p2
    else
      @current_player = @p1
    end
  end

  def start_game
    while @p1.lives > 0 && @p2.lives > 0 do
      puts "---------------------------------------"
      puts "#{@current_player.name} turn..."
      puts "---------------------------------------"
      @questioner.ask_question
      puts "---------------------------------------"
      response = gets.chomp.to_i
      puts "---------------------------------------"
      if response == @questioner.correct_answer
        puts "Congratulations #{@current_player.name} answered correctly!!!"
      else 
        @current_player.lose_life()
        puts "Wrong answer you have #{@current_player.lives} lives"
      end
      player_switcher()
    end
      
    puts "Game Over! #{@current_player.name} lost all lives."
    player_switcher()
    puts "CONGRATULATIONS #{@current_player.name} YOU ARE THE WINNER!"
  end
end

