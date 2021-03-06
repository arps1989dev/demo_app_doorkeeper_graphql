class Mutations::DeleteCategory < GraphQL::Function
  argument :id,types.ID

  type types.Boolean
  
  def call(obj,args,cts)
    category = Category.find(args[:id])
    !!category.destroy
  end
end