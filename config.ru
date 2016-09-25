require 'rubygems'
require File.join(File.dirname(__FILE__), 'lib/server.rb')
require 'sass/plugin/rack'

Sass::Plugin.options[:style] = :compressed
Sass::Plugin.options[:syntax] = :scss
Sass::Plugin.options[:full_exception] = true
Sass::Plugin.options[:never_update] = false
Sass::Plugin.options[:always_update] = true
Sass::Plugin.options[:always_check] = true

use Sass::Plugin::Rack

run Server
