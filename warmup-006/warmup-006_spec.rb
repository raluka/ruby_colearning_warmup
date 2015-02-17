require './warmup-006.rb'

describe Spaetkauf do


  describe "#take_number" do
    #write your tests for this method here
    it "should takes a String and return an array of strings in a numbered list" do
      store = Spaetkauf.new
      expect(store.take_number("Claudiu")).to eq(["1. Claudiu"])
    end

  end

  describe '#now_serving' do
    #write your tests for this method here
    it "should remove the customer who is first in line and returns their name" do
      store = Spaetkauf.new
      store.take_number("Gustavo")
      expect(store.now_serving).to eq("Gustavo")
    end
  end

end
