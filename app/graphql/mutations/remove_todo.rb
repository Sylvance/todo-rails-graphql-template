module Mutations
  class RemoveTodo < BaseMutation
    field :todo, Types::TodoType, null: false

    argument :id, ID, required: true

    def resolve(id:)
      todo = Todo.find_by(id: id)
      todo.destroy!

      {
        todo: todo
      }
    end
  end
end
