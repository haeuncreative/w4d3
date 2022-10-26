class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = Array.new()
  end

  def add_random_color
    @seq << COLORS.sample
  end

  def play
    while !@game_over
      take_turn
    end
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence
    if @game_over == false
      @sequence_length += 1
      self.add_random_color
      self.round_success_message
    end
      
  end

  def show_sequence
    self.add_random_color
  end

  def require_sequence
    input = gets.chomp
    if input != sequence
      @game_over = true
    end
  end

  def round_success_message
    p 'WOOO YOU GOT THIS'
  end

  def game_over_message
    p 'BOOO GAME OVER'
  end

  def reset_game
    @seq = Array.new
    @sequence_length = 1
    @game_over = false
  end
end
