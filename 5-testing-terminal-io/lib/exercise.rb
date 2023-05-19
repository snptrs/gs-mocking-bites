class InteractiveCalculator
  def initialize(terminal)
    @terminal = terminal
  end
  
  def run
    @terminal.puts "Please enter a number"
    number_1 = @terminal.gets.to_i
    @terminal.puts "Please enter another number"
    number_2 = @terminal.gets.to_i
    result = number_1 - number_2
    @terminal.puts "Here is your result:\n#{number_1} - #{number_2} = #{result}"
  end
end

# Hello. I will subtract two numbers.
# Please enter a number
# 4
# Please enter another number
# 3
# Here is your result:
# 4 - 3 = 1
