Types::CategoryInputType = GraphQL::InputObjectType.define do
  name "CategoryInputType"
  description "properties of creating and updating an Category"

  argument :name,types.String
  argument :sequence,types.Int

end

Types::CategoryType = GraphQL::ObjectType.define do
  name "CategoryType"
  field :id,types.ID
  field :name,types.String
  field :sequence,types.Int 

  field :errors, types[types.String], "Reasons this object could not be saved" do
    resolve -> (obj,_,_){
      obj.errors.to_a
    }
  end
end 