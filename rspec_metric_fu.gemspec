# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rspec_metric_fu/version'

Gem::Specification.new do |spec|
  spec.name          = "rspec_metric_fu"
  spec.version       = RspecMetricFu::VERSION
  spec.authors       = ["Nick Thomas"]
  spec.email         = ["nick.thomas@mobileeventguide.de"]
  spec.summary       = %q{metric_fu includes for our spec_helper}
  spec.homepage      = "https://github.com/mobileeventguide/rspec_metric_fu"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  spec.post_install_message = %q{
  *** Notice ***

  Rspec metric_fu install notice:

  You should write a .metrics file with the following content:

  MetricFu::Configuration.run do |config|
    config.configure_metric(:rcov) do |rcov|
      rcov.coverage_file = MetricFu.run_path.join("coverage/rcov/rcov.txt")
      rcov.enable
      rcov.activate
    end
  end

  *** Fin ***
  }

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_dependency 'metric_fu', '~> 4.9'
  spec.add_dependency 'simplecov'
end
