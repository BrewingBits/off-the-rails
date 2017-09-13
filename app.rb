require 'forwardable'

require 'pg'
require 'sequel'

require_relative 'lib/initializers/db'
require_relative 'lib/repositories/book_repository'

class MyApp
  def books
    @books ||= BookRepository
  end
end

Application = MyApp.new
