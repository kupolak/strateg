# frozen_string_literal: true

# rubocop:disable Metrics/BlockLength
RSpec.describe Strateg do
  before do
    sleep 1
  end

  it 'has a version number' do
    expect(Strateg::VERSION).not_to be nil
  end

  it 'Gets list of strategies and operational programmes' do
    request = Strateg.list_of_strategies_and_operational_programmes
    expect(request.count).to be == 8
  end

  it 'Gets strategies data' do
    request = Strateg.strategy_data(3)
    expect(request.count).to be >= 4
  end

  it 'Gets a description of a strategy' do
    request = Strateg.strategy_description(3)
    expect(request.count).to be == 3
  end

  it 'Gets cohesion policies list' do
    request = Strateg.cohesion_policies_list
    expect(request.count).to be >= 3
  end

  it 'Gets cohesion policy data' do
    request = Strateg.cohesion_policy_data(3)
    expect(request[0]['objective']).to be == 'Low-emission economy'
  end

  it 'Gets list of thematic areas' do
    request = Strateg.list_of_thematic_areas
    expect(request[0]['name']).to be == 'Population'
  end

  it 'Gets data for the thematic area' do
    request = Strateg.thematic_area_data(6)
    expect(request[0].count).to be == 5
  end

  it 'Gets the list of territorial units from the portrait jt' do
    request = Strateg.list_of_territorial_units
    expect(request.count).to be == 4
  end

  it 'Gets territory data' do
    request = Strateg.territory_data('644200000000')
    expect(request[0].count).to be == 6
  end

  it 'Gets list of indicators' do
    request = Strateg.list_of_indicators
    expect(request.count).to be > 1000
  end

  it "Gets available indicator's dimensions" do
    request = Strateg.available_indicators_dimensions(3)
    expect(request.count).to be == 7
  end

  skip "Gets indicator's dimension data" do
    request = Strateg.indicators_dimension_data(3, {
                                                  "level_id": '1',
                                                  "place_id": 1,
                                                  "section_id": 1,
                                                  "sex_id": 1
                                                })
    expect(request.count).to be == 10
  end

  skip 'Gets real data' do
    request = Strateg.real_data(3, 3, {
                                  "territory_code": '1',
                                  "level_id": '1'
                                })
    expect(request.count).to be >= 3
  end

  it "Gets indicator's metadata" do
    request = Strateg.indicators_metadata(3)
    expect(request[0].count).to be == 14
  end

  it 'Gets coordinators data' do
    request = Strateg.coordinators_data(3)
    expect(request.count).to be == 3
  end
end
# rubocop:enable Metrics/BlockLength
