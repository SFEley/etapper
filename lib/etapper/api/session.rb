require 'rubygems'
gem 'soap4r'
require 'soap/rpc/driver'
require 'soap/filter/streamhandler'

module Etapper
  module API
    class SessionFilter < SOAP::Filter::StreamHandler
      attr_accessor :cookie_values

      def initialize
        @cookie_values = {}
      end

      def on_http_outbound(req)
        if cookies.empty?
          req.header.delete('Cookie')
        else
          req.header['Cookie'] = cookies
        end
        # # Remove whitespace
        # req.body = req.body.to_s.gsub(/>\s*</m,'><')
      end

      def on_http_inbound(req, res)
        res.header['Set-Cookie'].each do |cookie|
          value = cookie.sub(/;.*/, '')
          if value =~ /(.*?)\s*=\s*(.*)/
            @cookie_values[$1] = $2
          end
        end
      end

      private
        def cookies
          cookie_array = []
          @cookie_values.each {|key, value| cookie_array << "#{key}=#{value}"}
          cookie_array.join("; ")
        end
    end
  end
end
