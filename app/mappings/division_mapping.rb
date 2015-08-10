class DivisionMapping
  include Kartograph::DSL

  kartograph do
    root_key singular: 'division', plural: 'divisions', scopes: [:read]

    scoped :read do
      property :id
      property :name
    end
  end
end
