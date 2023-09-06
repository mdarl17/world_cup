require './lib/player'
require './lib/team'

describe Team do
  it 'exists' do
    team = Team.new("France")
    expect(team).to be_a(Team)
  end

  it 'has attributes' do
    team = Team.new("France")
    expect(team.country).to eq("France")
  end

  it 
end