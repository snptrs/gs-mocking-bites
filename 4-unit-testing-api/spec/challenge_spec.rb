require 'challenge'

RSpec.describe CatFacts do
  it "returns a cat fact" do
    requester_dbl = double :requester
    expect(requester_dbl).to receive(:get).with(URI('https://catfact.ninja/fact')).and_return('{"fact":"Milk can give some cats diarrhea.","length":33}')
    
    cat_facts = CatFacts.new(requester_dbl)
    result = cat_facts.provide
    expect(result).to eq "Cat fact: Milk can give some cats diarrhea."
  end
end
