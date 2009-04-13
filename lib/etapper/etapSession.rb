require 'rubygems'
gem 'soap4r'
require 'soap/rpc/driver'
require 'soap/filter/streamhandler'

module Etapper
  class SessionFilter < SOAP::Filter::StreamHandler
    attr_accessor :cookie_value

    def initialize
      @cookie_value = nil
    end

    def on_http_outbound(req)
      req.header['Cookie'] = @cookie_value if @cookie_value
    end

    def on_http_inbound(req, res)
      # this sample filter only caputures the first cookie.
      cookie = res.header['Set-Cookie'][0]
      #      cookie.sub!(/;.*\z/, '') if cookie
      @cookie_value = cookie
      # do not save cookie value.
      puts "new cookie value: #{@cookie_value}"
    end
  end
end
