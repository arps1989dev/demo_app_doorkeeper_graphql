Types::QueryType = GraphQL::ObjectType.define do
  name "Query"

  field :screen_master, Types::ScreenMasterType do
    argument :id, types.ID
    # argument :user_id,types.Int
    description "One Screen Master"
    resolve -> (obj, args, ctx) {
      ScreenMaster.where(id: args[:id]).first
    }
  end

  field :category, Types::CategoryType do
    argument :id, types.ID
    description "One Category"
    resolve -> (obj, args, ctx) { Category.where(id: args[:id]).first }
  end



  field :all_screen_masters, types[Types::ScreenMasterType] do
    description "All the screen  masters in the database"
    resolve ->(_,_,_) {ScreenMaster.all}
  end

  field :all_categories, types[Types::CategoryType] do
    description "All the categories in the database"
    resolve ->(_,_,_) {Category.all}
  end

end
