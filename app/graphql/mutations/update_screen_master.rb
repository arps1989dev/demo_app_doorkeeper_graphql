class Mutations::UpdateScreenMaster < GraphQL::Function

  argument :id,types.ID
  argument :screen_master,Types::ScreenMasterInputType

  type Types::ScreenMasterType
  
  def call(obj,args,ctx)
    screen = ScreenMaster.new(args[:screen_master].to_h)
    if (ctx[:current_ability].can?(:update, screen))
      screen_master = ScreenMaster.find(args[:id])
      screen_master.try :update, args[:screen_master].to_h
      screen_master
    else
      {}
    end
  end
end