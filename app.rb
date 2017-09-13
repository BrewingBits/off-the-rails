require 'pg'
require 'sequel'

require_relative 'lib/initializers/db'

class MyApp
  def books
    @books ||= DB[:books]
  end
end

Application = MyApp.new
