class Mutations::UpdateScreenMaster < GraphQL::Function

  argument :id,types.ID
  argument :screen_master,Types::ScreenMasterInputType

  type Types::ScreenMasterType
  
  def call(obj,args,cts)
    screen_master = ScreenMaster.find(args[:id])
    screen_master.try :update, args[:screen_master].to_h
    screen_master
  end
end