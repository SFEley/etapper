# The broken SOAP server that eTapestry uses (probably SAAJ from what I can tell) chokes if the XML
# request contains any spaces or linebreaks between elements.  So we'll strip them all out the
# most direct way we can, straight from the method that produces the XML text.

module SOAP
  class Generator
    alias_method :orig_generate, :generate
    def generate(obj, io = nil)
      orig_generate(obj, io)  # Sets the @buf instance variable
      @buf.gsub!(/>\s*</m, '><')
    end
  end
end
      
