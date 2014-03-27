require 'rspec_metric_fu/version'
require 'simplecov'
require 'metric_fu/metrics/rcov/simplecov_formatter'

module RspecMetricFu
  class Coverage
    # run this method in your spec_helper
    def self.start
      SimpleCov.formatter = SimpleCov::Formatter::MetricFu
      SimpleCov.start
    end
  end
end

