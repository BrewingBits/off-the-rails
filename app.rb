require 'pg'
require 'sequel'

class MyApp
  def books
    @books ||= []
  end
end

Application = MyApp.new
