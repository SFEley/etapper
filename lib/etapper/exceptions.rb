module Etapper
  # Some attribute value is out of range or otherwise invalid for the eTapestry API.
  class BadValueError < StandardError; end
  
  # This value cannot be set by the client according to the eTapestry API specification.
  class ReadOnlyError < StandardError; end
  
  # A connection could not be made.  The username or password may be invalid, or Etapper::Client.autoconnect
  # may be set to false and you didn't run 'connect' before calling an API method.
  class ConnectionError < StandardError; end
  
  # A required field was left empty.
  class RequiredFieldError < StandardError; end
end

