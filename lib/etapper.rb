$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

require 'rubygems'
gem 'soap4r'

module Etapper
  VERSION = '0.0.1'
  ETAPESTRY_URL = "https://app.etapestry.com:443/v2messaging/service"
end

require 'etapper/etap'
require 'etapper/etapMappingRegistry'
require 'etapper/etapDriver'

