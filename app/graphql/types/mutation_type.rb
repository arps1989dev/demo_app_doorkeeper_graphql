Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  # create update and delete category
  field :create_category, function: Mutations::Category::CreateCategory.new
  field :update_category, function: Mutations::Category::UpdateCategory.new
  field :delete_category, function: Mutations::Category::DeleteCategory.new

end
