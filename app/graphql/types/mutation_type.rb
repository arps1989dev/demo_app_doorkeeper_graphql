Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  # create update and delete category
  # field :createCategory, function: Mutations::CreateCategory.new
  # field :updateCategory, function: Mutations::UpdateCategory.new
  # field :deleteCategory, function: Mutations::DeleteCategory.new

  # create update and delete screen master
  field :createScreenMaster, function: Mutations::CreateScreenMaster.new
  field :updateScreenMaster, function: Mutations::UpdateScreenMaster.new
end
