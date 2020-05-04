module Types
  class TodoType < Types::BaseObject
    graphql_name 'TodoType'
    field :id, ID, null: true
    field :title, String, null: true
  end
end
