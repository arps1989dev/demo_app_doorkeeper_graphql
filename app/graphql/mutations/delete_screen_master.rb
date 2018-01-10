class Mutations::DeleteScreenMaster < GraphQL::Function
  argument :id,types.ID

  type types.Boolean
  
  def call(obj,args,ctx)
    screen_master = ScreenMaster.find(args[:id])
    !!screen_master.destroy
  end
end