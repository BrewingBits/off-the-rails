class BookRepository
  class << self
    extend Forwardable

    def_delegator :data_set, :to_a

    def data_set
      @data_set ||= DB[:books]
    end

    def insert(set)
      data_set.insert(set)
      self
    end

    def to_json(*_)
      to_a.to_json
    end

    alias << insert
  end
end
