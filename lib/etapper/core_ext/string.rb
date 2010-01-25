require 'english/style_orm'

class String
  def symbolize
    self.snakecase.tr(' ','_').gsub(/[^\w_]/,'').sub(/^(\d)/,'_\1').to_sym
  end
end