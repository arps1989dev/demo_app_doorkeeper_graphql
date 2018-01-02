Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  # create update and delete category
  field :createCategory, function: Mutations::CreateCategory.new
  field :updateCategory, function: Mutations::UpdateCategory.new
  field :deleteCategory, function: Mutations::DeleteCategory.new

  # create update and delete category
  field :createScreenMaster, function: Mutations::CreateScreenMaster.new
end
