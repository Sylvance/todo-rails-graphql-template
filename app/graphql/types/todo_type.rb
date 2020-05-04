class Types::TodoType < Types::BaseObject
    graphql_name 'TodoType'

    field :id, ID, null: false
    field :title, String, null: false
end
