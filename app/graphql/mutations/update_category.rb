class Mutations::UpdateCategory < GraphQL::Function
  argument :id,types.ID

  argument :category,Types::CategoryInputType

  type Types::CategoryType
  
  def call(obj,args,cts)
    category = Category.find(args[:id])
    category.try :update,args[:category].to_h
    category
  end
end