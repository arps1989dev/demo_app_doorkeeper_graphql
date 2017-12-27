Types::CategoryType = GraphQL::ObjectType.define do
  name "CategoryType"
  description "Category Property"

  field :id, types.ID
  field :name, types.String
  field :sequence. types.Integer

end