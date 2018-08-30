class TowersOfHanoi
  attr_accessor :towers
  
  def initialize
    @towers = [[3,2,1], [], []]
  end 
  
  def move(from_tower, to_tower)
    @towers[to_tower] << @towers[from_tower].pop 
    raise "invalid input" if @towers[from_tower].empty?
  end
  
  def play
    while true
      
      puts "Enter from_tower"
      from_tower = gets.chomp.to_i
      puts "Enter to_tower"
      to_tower = gets.chomp.to_i
      move(from_tower, to_tower)
      break if won?
    end
    puts "you won!"
  end

  def won?
    return true if @towers[1].length == 3 || @towers[2].length == 3
    false
  end
  
end 