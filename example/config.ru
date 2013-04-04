# -*- encoding: utf-8 -*-

$:.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$:.unshift(File.dirname(__FILE__))

require 'hello_world'
require 'rack/favicon'

use Rack::Favicon
run HelloWorld.new
