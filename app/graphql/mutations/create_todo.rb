module Mutations
  class CreateTodo < BaseMutation
    field :todo, Types::TodoType, null: false

    argument :title, String, required: true

    def resolve(title:)
      todo = Todo.create!(title: title)
      {
        todo: todo
      }
    end
  end
end
