require_relative 'hangman_test'

describe Hangman do 
  it "user_1 array" do
    expect(user_1.initialize("hello")).to eq ["h","e","l","l","o"]
  end

  
end