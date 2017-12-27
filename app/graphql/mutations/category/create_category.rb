class Mutations::Category::CreateCategory < GraphQL::Function
  argument :id, types.ID
  argument :name, types.String
  argument :sequence. types.Integer

  type Types::CategoryType

  def call(obj, args, ctx)
    category = Category.create!(create_params(obj, args, ctx))
    rescue Exception => error
      GraphQL::ExceptionError.new("Error: #{error.to_s}")
  end

  def create_params(obj, args, ctx)
    category_params = {}
    args.each do |key, value|
      category_params[key.to_sym] = value
    end
    category_params
  end
end