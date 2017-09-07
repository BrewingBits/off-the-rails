require 'grape'

class MyApi < Grape::API
  get '/' do
    {message: 'hello'}
  end
end

run MyApi
