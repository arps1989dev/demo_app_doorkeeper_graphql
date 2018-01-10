class Mutations::CreateCategory < GraphQL::Function
  argument :category, Types::CategoryInputType
  type Types::CategoryType
  def call(obj, args, ctx)
    Category.create args[:category].to_h
  end

end