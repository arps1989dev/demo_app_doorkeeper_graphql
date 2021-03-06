Types::ScreenMasterInputType = GraphQL::InputObjectType.define do
  name "ScreenMasterInputType"
  description "properties of creating and updating an Category"

  argument :screen_name,types.String
  argument :user_id,types.Int

end

Types::ScreenMasterType = GraphQL::ObjectType.define do
  name "ScreenMasterType"
  field :id,types.ID
  field :screen_name,types.String
  field :user_id,types.Int

  field :errors, types[types.String], "Reasons this object could not be saved" do
    resolve -> (obj,_,_){
      obj.errors.to_a
    }
  end
end 