require 'spec'
require 'rubygems'

$:.unshift('lib') unless $:.include?('lib')
require 'dragonfly'

$:.unshift('.')

require 'argument_matchers'
require 'simple_matchers'
require 'image_matchers'

# A hack as system calls weren't using my path
extra_paths = %w(/opt/local/bin)
ENV['PATH'] ||= ''
ENV['PATH'] += ':' + extra_paths.join(':')

SAMPLES_DIR = File.expand_path(File.dirname(__FILE__) + '/../samples') unless defined?(SAMPLES_DIR)

Spec::Runner.configure do |config|
  
end

def todo
  raise "TODO"
end