class SeasonMapping
  include Kartograph::DSL

  kartograph do
    root_key singular: 'season', plural: 'seasons', scopes: [:read]

    scoped :read do
      property :id
      property :year
    end
  end
end
