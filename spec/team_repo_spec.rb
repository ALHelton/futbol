require_relative "./spec_helper"

RSpec.describe TeamRepo do
  before(:each) do
    game_path = './spec/fixtures/games.csv'
    team_path = './spec/fixtures/teams.csv'
    game_teams_path = './spec/fixtures/game_teams.csv'

    locations = {
      games: game_path,
      teams: team_path,
      game_teams: game_teams_path
    }
    
    @team = TeamRepo.new(locations)
  end

  describe "#Initialize" do
    it "exists" do
        expect(@team).to be_instance_of(TeamRepo)
    end
  end
end