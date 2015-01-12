require 'random_rps'

describe 'rock papaer scissors' do

  it "can know that rock beats scissors" do
    allow(RockPaperScissors).to receive(:pick).and_return "scissors"
    expect(RockPaperScissors.play("rock")).to eq "Win"
  end

    it "can know that paper beats rock" do
    allow(RockPaperScissors).to receive(:pick).and_return "rock"
    expect(RockPaperScissors.play("paper")).to eq "Win"
  end

  it "can know that scissors beats paper" do
    allow(RockPaperScissors).to receive(:pick).and_return "scissors"
    expect(RockPaperScissors.play("paper")).to eq "Lose"
  end

  it "can know that scissors draws with scissors" do
    allow(RockPaperScissors).to receive(:pick).and_return "scissors"
    expect(RockPaperScissors.play("scissors")).to eq "Tie"
  end

  it "can randomly choose rock paper or scissors" do 
    expect(['rock', 'paper', 'scissors']).to include RockPaperScissors.pick
  end


  
end




