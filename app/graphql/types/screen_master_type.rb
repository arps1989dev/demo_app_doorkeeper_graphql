Types::ScreenMasterType = GraphQL::ObjectType.define do

	name "Screen Master Type"

	field :screen_name, types.String
	field :id, types.ID
end