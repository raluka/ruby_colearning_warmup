require_relative "./warmup-004"

describe "#count_words" do
  it "should return the number of words in a sentence" do
    expect(count_words("I am a sentence with seven words")).to eq(7)
  end

  #write at least one other test here
  it "should return zero if no sentence" do
    expect(count_words("")).to eq(0)
  end

  it "should return the number of words in a sentence regardless extra spaces" do
    expect(count_words("this has      four words")).to eq(4)
  end

end