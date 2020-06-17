require 'rails_helper'

RSpec.describe Player, type: :model do
  before(:all) do
    Player.destroy_all
    @user1 = create(:player)
  end
  
  context "Works in the correct case" do 
    it "is valid with valid attributes" do
      expect(@user1).to be_valid
    end
  end

  context "Sets the correct defaults" do 
    it "should set default wins" do 
      expect(@user1.wins).to eq(0)
    end

    it "should set default losses" do 
      expect(@user1.losses).to eq(0)
    end

    it "should set default win percentage" do 
      expect(@user1.win_percentage).to eq(50.0)
    end

    it "should set default Elo" do 
      expect(@user1.elo).to eq(1600)
    end
  end

  context "Check validations" do
    
    it "has a unique ign" do
      user2 = build(:player)
      expect(user2).to_not be_valid
    end
    
    it "is not valid without an ign" do 
      user2 = build(:player, ign: nil)
      expect(user2).to_not be_valid
    end

    it "is not valid with negative wins" do 
      user2 = build(:player, ign: 'Test2', wins: -1)
      expect(user2).to_not be_valid
    end

    it "is not valid with negative losses" do 
      user2 = build(:player, ign: 'Test2', losses: -1)
      expect(user2).to_not be_valid
    end
  end

  context "add_win behaves as expected" do 
    it "increments a players wins" do 
      @user1.add_win
      expect(@user1.wins).to eq(1)
    end
  end

  context "add_loss behaves as expected" do 
    it "increments a players losses" do 
      @user1.add_loss
      expect(@user1.losses).to eq(1)
    end
  end

  # TODO: Should mock up matches as well
  context "all_losses behaves as expected" do 
    it "returns an array" do
      expect(@user1.all_losses).to eq([])
    end
  end

  context "all_matches behaves as expected" do 
    it "returns an array" do
      expect(@user1.all_matches).to eq([])
    end
  end

  context "all_wins behaves as expected" do 
    it "returns an array" do
      expect(@user1.all_wins).to eq([])
    end
  end

  context "all_tournaments behaves as expected" do 
    it "returns an array" do
      expect(@user1.all_tournaments).to eq([])
    end
  end

  context "calculate_win_percentage behaves as expected" do
    it "calculates and sets the correct percentage" do 
      @user1.wins = 3
      @user1.losses = 1
      @user1.calculate_win_percentage
      expect(@user1.win_percentage).to eq(75)
    end

    it "rounds the percentage to 2 decimal places" do
      @user1.wins = 2
      @user1.losses = 1
      @user1.calculate_win_percentage
      expect(@user1.win_percentage).to eq(66.67)
    end
  end
end