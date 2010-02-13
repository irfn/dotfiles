require 'rubygems'
require 'irb/completion'
require 'map_by_method'
require 'what_methods'
require 'pp'
require 'wirble'
IRB.conf[:AUTO_INDENT]=true

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
