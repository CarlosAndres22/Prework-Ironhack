# The Odin Project - Section 3: Ruby Programming
# Project File I/O and Serialization, No. 2 Hangman
#
# Game - The conductor: controls the entrance point, menu navigation, and the primary
# game loop.
#
# GameData - Keeps track of everything about the in-game state, the player's progress,
# and the ability to save/load the game-state.
#
# View - Everything related to the "graphics" (humor me) and what the player sees. All
# animation frames and the method that updates the primary screen that you play on are
# in this class.
#
# 5desk.txt is the word list that the game pulls from.


require_relative "view.rb"
require_relative "gamedata.rb"


class Game

  def initialize
    @view = View.new
    @view.show_intro_splash
    gets
    @view.show_main_menu_animate
    main_menu
  end

  def main_menu
    @data = GameData.new
    @view.show_main_menu
    print " Please enter a menu selection (1-4): "
    menu_choice = gets.chomp
    case menu_choice
      when "1"
        setup_game
      when "2"
        load_game
      when "3"
        @view.show_how_to_play
        gets
        main_menu
      when "4"
        @view.show_about_this_game
        gets
        main_menu
      when "X", "x", "Q", "q", "quit", "Quit", "exit", "Exit"
        abort(" Thanks for playing!")
      else
        puts " Invalid entry, please try again."
        sleep 1
        main_menu
    end
  end

  def setup_game
    @data = GameData.new
    @view.show_game_setup
    print " Please enter a menu selection (1-4): "
    difficulty = gets.chomp
    case difficulty
      when "1"
        @data.set_difficulty(1)
        @data.set_chances(7)
      when "2"
        @data.set_difficulty(2)
        @data.set_chances(5)
      when "3"
        @data.set_difficulty(3)
        @data.set_chances(3)
      when "4"
        @data.set_difficulty(4)
        @data.set_chances(1)
      else
        puts " Invalid entry, please try again."
        sleep 1
        setup_game
    end
    run_game
  end

  def run_game
    rerun = false
    complete = false
    until complete
      if @data.turn < 10
        if rerun == true
          @view.show_game(@data.difficulty, @data.solution, @data.secret, @data.letters, " " + @data.turn.to_s, @data.chances, true)
          rerun = false
        else
          @view.show_game(@data.difficulty, @data.solution, @data.secret, @data.letters, " " + @data.turn.to_s, @data.chances)
        end
      else
        if rerun == true
          @view.show_game(@data.difficulty, @data.solution, @data.secret, @data.letters, @data.turn.to_s, @data.chances, true)
          rerun = false
        else  
          @view.show_game(@data.difficulty, @data.solution, @data.secret, @data.letters, @data.turn.to_s, @data.chances)
        end
      end 

      if @data.winning_match? || @data.chances < 1
        if @data.chances < 1
          @view.show_game_loss
        else
          @view.show_game_win; end
        print " Enter Y/N: "
        select = gets.chomp.downcase
        if select == "y"
          setup_game
        else
          main_menu; end
      end

      print " Please choose a letter: "
      input = gets.chomp.downcase
      if good_input?(input)
        if @data.letter_match?(input)
          rerun = true
          @data.reveal_matches(input)
        else
          puts " Sorry! That wasn't a match. "
          sleep 1
          @data.remove_chance
        end
      else
        puts " Please try again."
        sleep 1
        rerun = true
        next
      end
      @data.add_turn
    end
  end

  def good_input?(input)
    if input == "*"
      save_game
    elsif input == "!"
      abort(" Thanks for playing!")
    elsif input.length > 1
      return false
    elsif input.ord.between?(97,122)
      if @data.letter_used?(input)
        print " You've used this letter previously."
        sleep 1
        return false
      else
        @data.insert_letter(input); end
    else
      return false
    end
    return true
  end

  def save_game
      if @data.turn < 10
        @view.show_game(@data.difficulty, @data.solution, @data.letters, " " + @data.turn.to_s, @data.chances)
      else
        @view.show_game(@data.difficulty, @data.solution, @data.letters, @data.turn.to_s, @data.chances)
      end 
      print " Enter the name to save as: "
      name = gets.chomp.downcase
      if name.length > 10
        puts " Please no more than 10 characters, try again. "
        sleep 1
        save_game
      elsif @data.save_exist?(name)
        puts " A file with that name already exists, try again. "
        sleep 1
        save_game
      else
        name.split("").each do |c|
          if !c.ord.between?(97,122) && !c.ord.between?(48,57)
            puts " Contains illegal characters, try again. "
            sleep 1
            save_game; end
        end
      end
        
      @data.save_game(name)
      main_menu
  end

  def load_game
    print " Enter the name of the file to load: "
    name = gets.chomp.downcase
    if @data.save_exist?(name)
      @data.load_game(name)
      run_game
    else
      puts " No file by that name exists, returning to main menu. "
      sleep 1
      main_menu
    end
  end

end


game = Game.new