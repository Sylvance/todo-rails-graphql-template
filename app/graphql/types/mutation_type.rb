module Types
  class MutationType < Types::BaseObject
    field :update_todo, mutation: Mutations::UpdateTodo
    field :remove_todo, mutation: Mutations::RemoveTodo
    field :create_todo, mutation: Mutations::CreateTodo
  end
end
