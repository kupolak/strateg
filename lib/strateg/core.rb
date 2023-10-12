# frozen_string_literal: true

module Core
  STRATEG_BASE_URL = 'https://strateg.stat.gov.pl/api'

  STRATEGIES_AND_PROGRAMMES = "#{STRATEG_BASE_URL}/strategies-programmes".freeze
  COHESION_POLICY = "#{STRATEG_BASE_URL}/cohesion-policy".freeze
  STATISTICS_BY_THEME = "#{STRATEG_BASE_URL}/statistics-by-theme".freeze
  TERRITORIAL_DATA = "#{STRATEG_BASE_URL}/territorial-data".freeze
  INDICATORS = "#{STRATEG_BASE_URL}/indicators".freeze
  INDICATORS_METRICS = "#{STRATEG_BASE_URL}/metrics".freeze
  STRATEGIES_AND_PROGRAMS_COORDINATORS = "#{STRATEG_BASE_URL}/coordinators".freeze
end
