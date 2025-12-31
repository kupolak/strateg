# frozen_string_literal: true

# rubocop:disable Metrics/BlockLength
RSpec.describe Strateg do
  before do
    sleep 1
  end

  it 'has a version number' do
    expect(Strateg::VERSION).not_to be_nil
  end

  it 'Gets list of strategies and operational programmes' do
    request = described_class.list_of_strategies_and_operational_programmes
    expect(request.count).to eq 8
  end

  it 'Gets strategies data' do
    request = described_class.strategy_data(3)
    expect(request.count).to be >= 4
  end

  it 'Gets a description of a strategy' do
    request = described_class.strategy_description(3)
    expect(request.count).to eq 3
  end

  it 'Gets cohesion policies list' do
    request = described_class.cohesion_policies_list
    expect(request.count).to be >= 3
  end

  it 'Gets cohesion policy data' do
    request = described_class.cohesion_policy_data(1013)
    expect(request.first.count).to eq 2
  end

  it 'Gets list of thematic areas' do
    request = described_class.list_of_thematic_areas
    expect(request[0]['name']).to eq 'Population'
  end

  it 'Gets data for the thematic area' do
    request = described_class.thematic_area_data(6)
    expect(request[0].count).to eq 5
  end

  it 'Gets the list of territorial units from the portrait jt' do
    request = described_class.list_of_territorial_units
    expect(request.count).to eq 4
  end

  it 'Gets territory data' do
    request = described_class.territory_data('644200000000')
    expect(request[0].count).to eq 6
  end

  it 'Gets list of indicators' do
    request = described_class.list_of_indicators
    expect(request.count).to be > 1000
  end

  it "Gets available indicator's dimensions" do
    request = described_class.available_indicators_dimensions(3)
    expect(request.count).to eq 7
  end

  it "Gets indicator's dimension data" do
    request = described_class.indicators_dimension_data(3)
    expect(request.count).to eq 10
  end

  it "Gets indicator's metadata" do
    request = described_class.indicators_metadata(3)
    expect(request[0].count).to eq 14
  end

  it 'Gets coordinators data' do
    request = described_class.coordinators_data(3)
    expect(request.count).to eq 3
  end
end

# rubocop:enable Metrics/BlockLength
