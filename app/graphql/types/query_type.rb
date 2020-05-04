module Types
  class QueryType < Types::BaseObject
    field :todos,
          [Types::TodoType],
          null: false

    def todos
      Todo.all
    end
  end
end
