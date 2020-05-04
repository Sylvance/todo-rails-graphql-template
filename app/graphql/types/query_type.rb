module Types
  class QueryType < Types::BaseObject
    field :allTodos, [TodoType], null: false

    field :todo, TodoType, null: true
      argument :id, ID, required: true
    end

    def allTodos
      Todo.all
    end
  end
end
