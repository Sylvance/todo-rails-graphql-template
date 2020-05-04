module Types
  class QueryType < Types::BaseObject
    field :todos, [Types::TodoType], null: false

    field :todo, Types::TodoType, null: false
      argument :id, ID, required: true
    end

    def todos
      Todo.all
    end
  end
end
