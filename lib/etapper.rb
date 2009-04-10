$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

require 'rubygems'
gem 'soap4r'

module Etapper
  VERSION = '0.0.1'
end

require 'etapper/etap'
require 'etapper/etapMappingRegistry'
require 'etapper/etapDriver'

