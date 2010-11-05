require File.expand_path("../lib/signal_tools", __FILE__)

Gem::Specification.new do |gem|
  gem.name    = 'signal_tools'
  gem.version = SignalTools::VERSION
  gem.date    = Date.today.to_s

  gem.summary = "Create technical analysis data for a given stock."
  gem.description = "Gem to create technical analysis data for a given security (like MACD, stochastic, and exponential moving averages)."

  gem.authors  = ['Matt White']
  gem.email    = 'mattw922@gmail.com'
  gem.homepage = 'http://github.com/whitethunder/signal_tools'

  gem.add_dependency('rake')
  gem.add_dependency('yahoofinance')

  # ensure the gem is built out of versioned files
  gem.files = Dir['Rakefile', '{lib,test}/**/*', 'README*', 'LICENSE*'] & `git ls-files -z`.split("\0")
end
