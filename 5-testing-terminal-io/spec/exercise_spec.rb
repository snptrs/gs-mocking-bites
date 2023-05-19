require 'exercise'

RSpec.describe InteractiveCalculator do
    it "subtracts one number from another with terminal input" do
    terminal = double :terminal
    expect(terminal).to receive(:puts).with("Please enter a number").ordered
    expect(terminal).to receive(:gets).and_return("5")
    expect(terminal).to receive(:puts).with("Please enter another number").ordered
    expect(terminal).to receive(:gets).and_return("2")
    expect(terminal).to receive(:puts).with("Here is your result:\n5 - 2 = 3").ordered
    interactive_calculator = InteractiveCalculator.new(terminal)
    interactive_calculator.run
    end
end
