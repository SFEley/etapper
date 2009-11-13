require 'soap/rpc/driver'
require 'soap/filter/streamhandler'

module Etapper
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
      
      # Tweak the XML body to fit eTapestry's quirks and bugs
      b = HTTP::Message::Body.new
      c = req.body.content
      c.gsub!(/>\s*</m,'><')  # Remove whitespace between elements
      c.gsub!(/<(\S+) xsi:nil="true"><\/\1>/,'')  # Strip out elements that are simply nil
      b.init_request(c)
      req.body = b
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
