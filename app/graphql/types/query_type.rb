module Types
  class QueryType < Types::BaseObject
    field :todos,
          [Types::TodoType],
          null: false

    field :todo, Types::TodoType, null: false do
      argument :id, ID, required: true
    end

    def todo(id:)
      Todo.find_by(id: id)
    end

    def todos
      Todo.all
    end
  end
end
