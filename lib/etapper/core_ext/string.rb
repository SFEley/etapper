require 'english/style'

class String
  def symbolize
    self.snakecase.to_sym
  end
end