require 'rubygems'

# Pull stuff out of vendor/gems
Dir.glob(File.dirname(__FILE__) + "/../vendor/gems/*").each do |path|
  gem_name = File.basename(path.gsub(/-[\d\.]+$/, ''))
  $LOAD_PATH << path + "/lib/"
end


module Etapper
  VERSION = '0.0.1'
  ETAP_URL = "https://app.etapestry.com:443/v2messaging/service" # Have to declare before driver
  ETAP_NS = "etapestryAPI/service" # Namespace
  ETAPPER_DIR = File.expand_path("~/.etapper")
  
  # A convenience method that returns the corresponding Etapper class from an API base class;
  # e.g., Etapper::Account from Etapper::API::Account. Uses string manipulation only, so it's
  # pretty dumb.
  def self.etapper_class(api_class)
    name = api_class.to_s.rpartition('::')[2]
    self.const_get(name)
  end
  
end

ETAPPER_LIB = File.dirname(__FILE__)
ETAPPER_API = File.join(ETAPPER_LIB, 'etapper', 'api')

[ETAPPER_LIB, ETAPPER_API].each do |dir|
  $:.unshift(dir) unless
    $:.include?(dir) || $:.include?(File.expand_path(dir))
  
end

require 'etapper/client'
require 'etapper/exceptions'
# Load our class wrappers (Account, Defined Value, etc.)
Dir[File.join(ETAPPER_LIB, 'etapper', 'classes', '*.rb')].sort.each do |path|
  filename = File.basename(path, '.rb')
  require "etapper/classes/#{filename}"
end

