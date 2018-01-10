class Mutations::DeleteScreenMaster < GraphQL::Function
  argument :id,types.ID

  type types.Boolean
  
  def call(obj,args,ctx)
    binding.pry
    if (ctx[:current_ability].can?(:destroy, obj))
      binding.pry
      screen_master = ScreenMaster.find(args[:id])
      !!screen_master.destroy
    else
      binding.pry
      raise GraphQL::ExecutionError, "You cannot delete this screen"
    end
  end
end