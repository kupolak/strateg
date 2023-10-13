# frozen_string_literal: true

require_relative 'core'
require_relative 'request'

# STRATEG module for interaction with API
module Strateg
  VERSION = '1.0.0'

  module_function

  # Strategies and programmes

  # Gets list of strategies and operational programmes
  def list_of_strategies_and_operational_programmes
    Request.new(Core::STRATEGIES_AND_PROGRAMMES).content
  end

  # Gets strategies data
  # @param [Integer] strategy_id
  def strategy_data(strategy_id)
    Request.new(Core::STRATEGIES_AND_PROGRAMMES + "/#{strategy_id}").content
  end

  # Gets a description of a strategy
  # @param [Integer] strategy_id
  def strategy_description(strategy_id)
    Request.new(Core::STRATEGIES_AND_PROGRAMMES + "/#{strategy_id}/description").content
  end

  # Cohesion policies

  # Gets cohesion policies list
  def cohesion_policies_list
    Request.new(Core::COHESION_POLICY).content
  end

  # Gets cohesion policy data
  # @param [Integer] cohesion_id
  def cohesion_policy_data(cohesion_id)
    Request.new(Core::COHESION_POLICY + "/#{cohesion_id}").content
  end

  # Statistics by theme

  # Gets list of thematic areas
  def list_of_thematic_areas
    Request.new(Core::STATISTICS_BY_THEME).content
  end

  # Gets data for the thematic area
  # @param [Integer] area_id
  def thematic_area_data(area_id)
    Request.new(Core::STATISTICS_BY_THEME + "/#{area_id}").content
  end

  # Territorial data

  # Gets the list of territorial units from the portrait jt
  def list_of_territorial_units
    Request.new(Core::TERRITORIAL_DATA).content
  end

  # Gets territory data
  # @param [Integer] territory_code
  def territory_data(territory_code)
    Request.new(Core::TERRITORIAL_DATA + "/#{territory_code}").content
  end

  # Indicators

  # Gets list of indicators
  def list_of_indicators
    Request.new(Core::INDICATORS).content
  end

  # Gets available indicator's dimensions
  # @param [Integer] indicator_id
  def available_indicators_dimensions(indicator_id)
    Request.new(Core::INDICATORS + "/#{indicator_id}").content
  end

  # Gets indicator's dimension data
  # @param [Integer] indicator_id
  # @param [Hash] params

  # level_id [String]
  # territorial level of data
  # 0 - EU total and countries level
  # 2 - Voivodships Level
  # 3 - Regions Level
  # 4 - Subregions Level
  # 5 - Powiats Level
  # 6 - Gminas Level
  # M - National Urban Policy
  # O - Functional areas
  # Z - Integrated Territorial Investments

  # place_id [Integer]
  # 1 - total
  # 2 - urban
  # 3 - rural

  # section_id [Integer]
  # id of age group: <1, 39> and <1001, 1003>; 1 means 'total'

  # sex_id [Integer]
  # 1 - total
  # 2 - female
  # 3 - male

  def indicators_dimension_data(indicator_id, params = {})
    Request.new(Core::INDICATORS + "/#{indicator_id}/dimensions", params).content
  end

  # Gets real data
  # @param [Integer] dimension_id
  # @param [Integer] indicator_id
  # @param [Hash] params

  # territory_code [String]
  # level_id [String]

  def real_data(dimension_id, indicator_id, params = {})
    Request.new(Core::INDICATORS + "/#{indicator_id}/dimensions/#{dimension_id}", params).content
  end

  # Indicators metrics

  # Gets indicator's metadata
  # @param [Integer] indicator_id
  def indicators_metadata(indicator_id)
    Request.new(Core::INDICATORS_METRICS + "/#{indicator_id}").content
  end

  # Strategies and programmes coordinators

  # Gets coordinators data
  # @param [Integer] strategy_id
  def coordinators_data(strategy_id)
    Request.new(Core::STRATEGIES_AND_PROGRAMS_COORDINATORS + "/#{strategy_id}").content
  end
end
