class BookAPI < Grape::API
  format :json

  helpers do
    def books
      @books ||= []
    end
  end

  resource :books do
    get '/' do
      {books: books}
    end

    params do
      requires :title, type: String
      requires :author, type: String
    end
    post do
      books << { author: params[:author], title: params[:title] }
    end
  end
end

