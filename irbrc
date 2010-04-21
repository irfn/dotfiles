require 'rubygems'
require 'irb/completion'
require 'map_by_method'
require 'what_methods'
require 'pp'
require 'wirble'
require 'readline'
require 'irb/ext/save-history'
ARGV.concat [ "--readline", "--prompt-mode", "simple" ]

IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:AUTO_INDENT]=true
IRB.conf[:USE_READLINE]=true
IRB.conf[:EVAL_HISTORY] = 200
Wirble.init
Wirble.colorize

# Log to STDOUT if in Rails
if ENV.include?('RAILS_ENV') && !Object.const_defined?('RAILS_DEFAULT_LOGGER')
require 'logger'
RAILS_DEFAULT_LOGGER = Logger.new(STDOUT)
end

def spec_help
  require 'spec/spec_helper'
end

def factory_girl_help
  require 'factory_girl'
  require 'spec/factories.rb'
end

def vendor_factory_girl_help
  factory_girl_help
  require 'vendor/plugins/configuration_domain/spec/factories.rb'
  require 'vendor/plugins/owner_domain/spec/factories.rb'
end

