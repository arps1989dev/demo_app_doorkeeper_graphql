class Mutations::CreateScreenMaster < GraphQL::Function
  argument :screen_master, Types::ScreenMasterInputType
  type Types::ScreenMasterType
  def call(obj, args, cts)
    ScreenMaster.create args[:screen_master].to_h
  end

end