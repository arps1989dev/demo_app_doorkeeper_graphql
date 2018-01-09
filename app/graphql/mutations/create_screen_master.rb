class Mutations::CreateScreenMaster < GraphQL::Function
	# binding.pry
  argument :screen_master, Types::ScreenMasterInputType
  type Types::ScreenMasterType
  def call(obj, args, cts)
    binding.pry
    model = ScreenMaster.new(args[:screen_master].to_h)
    if cts[:current_ability].can?(:create, model)
      persist_model = ScreenMaster.create args[:screen_master].to_h
      persist_model.roles << current_resource_owner.roles.first
    else
      model
    end
  end

  

end