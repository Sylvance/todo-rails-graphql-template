class Types::TodoType < Types::BaseObject
    graphql_name 'TodoType'

    field :id, ID, required: true
    field :title, String, required: true
end
