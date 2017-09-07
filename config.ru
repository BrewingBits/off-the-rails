require 'grape'

class MyApi < Grape::API
  get '/' do
    {message: 'hello'}
  end

  route_param :name do
    get do
      {message: "Hello #{params[:name]}!"}
    end
  end
end

run MyApi
