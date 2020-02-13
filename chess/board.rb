require "byebug"
require_relative "piece"

class Board

  attr_reader :board

  def initialize
    @board = Array.new(8) {Array.new(8)}
    @board[0].fill(Piece.new)
    @board[1].fill(Piece.new)
    @board[6].fill(Piece.new)
    @board[7].fill(Piece.new)
  end

  def move_piece(start_pos, end_pos) # [1,1], [2,1]
    starting_piece = board[start_pos[0]][start_pos[1]]
    ending_piece = board[end_pos[0]][end_pos[1]]
    if starting_piece.nil?
      raise "No piece at starting position"
    elsif !ending_piece.nil?
      raise "Position is occupied"
    end 
    starting_piece, ending_piece = ending_piece, starting_piece
    return starting_piece
  end

end