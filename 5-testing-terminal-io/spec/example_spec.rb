require 'example'

RSpec.describe Greeter do
  it "asks the user for their name and says hello" do
    terminal = double :terminal
    expect(terminal).to receive(:puts).with("What is your name?")
    expect(terminal).to receive(:gets).and_return("Sean")
    expect(terminal).to receive(:puts).and_return("Hello, Sean!")
    greeter = Greeter.new(terminal)
    greeter.greet
  end
end
