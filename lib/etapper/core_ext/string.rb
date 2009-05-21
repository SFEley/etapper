require 'english/style_orm'

class String
  def symbolize
    self.snakecase.tr(' ','_').gsub(/[^\w_]/,'').to_sym
  end
end