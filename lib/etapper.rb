require 'rubygems'
gem 'soap4r'
gem 'english'

module Etapper
  VERSION = '0.0.1'
  ETAP_URL = "https://app.etapestry.com:443/v2messaging/service" # Have to declare before driver
  ETAP_NS = "etapestryAPI/service" # Namespace
end


$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

require 'etapper/client'

