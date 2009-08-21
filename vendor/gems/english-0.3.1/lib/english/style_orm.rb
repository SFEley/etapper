module English
  require 'english/inflect'
  require 'english/style'

  module StyleORM

    #########################################################
    # ACTIVE SUPPORT                                        #
    #                                                       #
    # The following were extracted from ActiveSupport's     #
    # Inflector class. It seemed prudent to maintian this   #
    # degree of compatbility, at least for the time being.  #
    #########################################################

    # By default, camelize converts strings to UpperCamelCase. If the
    # argument to camelize is set to ":lower" then camelize produces
    # lowerCamelCase.
    #
    # camelize will also convert '/' to '::' which is useful for
    # converting paths to namespaces
    #
    #   "active_record".camelize               #=> "ActiveRecord"
    #   "active_record".camelize(true)         #=> "activeRecord"
    #   "active_record/errors".camelize        #=> "ActiveRecord::Errors"
    #   "active_record/errors".camelize(true)  #=> "activeRecord::Errors"
    #
    def camelize(first_letter_in_uppercase = true)
      if first_letter_in_uppercase
        to_s.gsub(/\/(.?)/){ "::#{$1.upcase}" }.gsub(/(?:^|_)(.)/){ $1.upcase }
      else
        lowercase_and_underscored = to_s
        lowercase_and_underscored[0,1] + lowercase_and_underscored.camelize[1..-1]
      end
    end

    # The reverse of +camelize+. Makes an underscored, lowercase form from
    # the expression in the string.
    #
    # Changes '::' to '/' to convert namespaces to paths.
    #
    #   "ActiveRecord".underscore          #=> "active_record"
    #   "ActiveRecord::Errors".underscore  #=> active_record/errors
    #
    def underscore
      to_s.
      gsub(/::/, '/').
      gsub(/([A-Z]+)([A-Z][a-z])/,'\1_\2').
      gsub(/([a-z\d])([A-Z])/,'\1_\2').
      tr("-", "_").
      downcase
    end

    # Replaces underscores with dashes in the string.
    #
    #   "puni_puni".dasherize  #=> "puni-puni"
    #
    def dasherize
      to_s.gsub(/_/, '-')
    end

    # Create a class name from a plural table name like Rails does
    # for table names to models. Note that this returns a string and
    # not a Class. (To convert to an actual class follow classify
    # with constantize.)
    #
    #   "egg_and_hams".classify  #=> "EggAndHam"
    #   "posts".classify         #=> "Post"
    #
    # Singular names are not handled correctly:
    #
    #   "business".classify      #=> "Busines"
    #
    def classify
      # strip out any leading schema name
      to_s.sub(/.*\./, '').singularize.camelize
    end

    # Capitalizes the first word and turns underscores into spaces and strips _id.
    # Like titleize, this is meant for creating pretty output.
    #
    #   "employee_salary".humanize    #=> "Employee salary"
    #   "author_id".humanize          #=> "Author"
    #
    def humanize
      to_s.gsub(/_id$/, "").gsub(/_/, " ").capitalize
    end

    # Create the name of a table like Rails does for models to table names.
    # This method uses the pluralize method on the last word in the string.
    #
    #   "RawScaledScorer".tableize  #=> "raw_scaled_scorers"
    #   "egg_and_ham".tableize      #=> "egg_and_hams"
    #   "fancyCategory".tableize    #=> "fancy_categories"
    #
    def tableize
      to_s.underscore.pluralize
    end

    # Capitalizes all the words and replaces some characters in the
    # string to create a nicer looking title. Titleize is meant for
    # creating pretty output. It is not used in the Rails internals.
    #
    # titleize is also aliased as as titlecase
    #
    #   "man from the boondocks".titleize   #=> "Man From The Boondocks"
    #   "x-men: the last stand".titleize    #=> "X Men: The Last Stand"
    #
    def titleize
      to_s.underscore.humanize.gsub(/\b('?[a-z])/){ $1.capitalize }
    end

    # Creates a foreign key name from a class name.
    # +separate_id_with_underscore+ sets whether the method
    # should put '_' between the name and 'id'.
    #
    #   "Message".foreign_key        #=> "message_id"
    #   "Message".foreign_key(false) #=> "messageid"
    #   "Admin::Post".foreign_key    #=> "post_id"
    #
    def foreign_key(separate_id_with_underscore = true)
      to_s.demodulize.underscore + (separate_id_with_underscore ? "_id" : "id")
    end

  end

  module StyleORM::Replace
    def camelize!    ; replace(camelize)    ; end
    def underscore!  ; replace(underscore)  ; end
    def dasherize!   ; replace(dasherize)   ; end
    def classify!    ; replace(classify)    ; end
    def humanize!    ; replace(humanize)    ; end
    def tableize!    ; replace(tableize)    ; end
    def titleize!    ; replace(titleize)    ; end
    def foreign_key! ; replace(foreign_key) ; end
  end

end

class String #:nodoc:
  include English::StyleORM
  include English::StyleORM::Replace
end

