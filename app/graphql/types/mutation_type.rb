module Types
  class MutationType < Types::BaseObject
    field :create_todo, mutation: Mutations::CreateTodo
  end
end
