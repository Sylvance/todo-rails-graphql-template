module Mutations
  class UpdateTodo < BaseMutation
    field :todo, Types::TodoType, null: false

    argument :id, ID, required: true
    argument :title, String, required: true

    def resolve(id:, title:)
      todo = Todo.find_by(id: id)
      todo.update(title: title)

      {
        todo: todo
      }
    end
  end
end
