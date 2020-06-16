require 'rails_helper'

RSpec.describe Player, type: :model do

  # Validation checks
  describe "wins and losses must be positive" do 
    context "wins" do 
      it "fails on negative" do 
        player = Player.create(ign: "test", wins: -2, losses: 0)
        expect(player.valid?).to eq(false)
      end
      it "succeeds on positive" do 
        player = Player.create(ign: "test", wins: 5, losses: 0)
        expect(player.valid?).to eq(true)
      end
    end
    context "losses" do
      it "fails on negative losses" do 
        player = Player.create(ign: "test", wins: 0, losses: -2)
        expect(player.valid?).to eq(false)
      end
      it "succeeds on positive losses" do 
        player = Player.create(ign: "test", wins: 0, losses: 5)
        expect(player.valid?).to eq(true)
      end
    end
  end

  describe "add_loss" do 
    context "works as expected" do 
      it "increments wins" do 
        player = Player.create(ign: "test", losses: 5)
        player.add_loss
        expect(player.losses).to eq(6)
      end
    end
  end
  
  describe "add_win" do 
    context "works as expected" do 
      it "increments wins" do 
        player = Player.create(ign: "test", wins: 5)
        player.add_win
        expect(player.wins).to eq(6)
      end
    end
  end

  describe "calculate_win_percentage" do 
    context "works as expected" do 
      it "calculates the correct %" do 
        player = Player.create(ign: "test", wins: 10, losses: 5)
        player.calculate_win_percentage
        expect(player.win_percentage).to eq(66.67)
      end
    end
  end
end
