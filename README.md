# RspecMetricFu

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'rspec_metric_fu'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rspec_metric_fu

You will want to write a '.metrics' file with this content:

```ruby
MetricFu::Configuration.run do |config|
  config.configure_metric(:rcov) do |rcov|
    rcov.coverage_file = MetricFu.run_path.join("coverage/rcov/rcov.txt")
    rcov.enable
    rcov.activate
  end
end
```

and add these lines to your 'spec/spec_helper.rb'

```ruby
require 'rspec_metric_fu'
RspecMetricFu::Coverage.start
```

## Usage
To get awesome metrics, first run:

```bash
bundle exec rspec
```

and then:

```bash
bundle exec metric_fu
```

## Summary
![Before and After](https://s3-eu-west-1.amazonaws.com/uploads-eu.hipchat.com/13350/44658/LYjOTsDby0P8LkN/one_does_not_simply_walk_into_more_doors-92925.jpg)

## Contributing

1. Fork it ( http://github.com/<my-github-username>/rspec_metric_fu/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
