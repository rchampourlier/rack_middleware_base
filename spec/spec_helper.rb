ENV['RACK_ENV'] ||= 'test'

root_dir = File.expand_path('../..', __FILE__)
$LOAD_PATH.unshift root_dir
require 'lib/rack_middleware_base'
$LOAD_PATH.shift