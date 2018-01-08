DemoAppDoorkeeperGraphqlSchema = GraphQL::Schema.define do
  # authorization(MyAuthStrategy)
  mutation(Types::MutationType)
  query(Types::QueryType)
  use GraphQL::Guard.new
# (
#     not_authorized: ->(type, field) { GraphQL::ExecutionError.new("Not authorized to access #{type}.#{field}") }
# )
  # class MyAuthStrategy
  #   def initialize(ctx)
  #     @user = ctx[:custom_user]
  #   end

  #   def allowed?(gate, object)
  #     if object.nil?
  #       if gate.role == :admin
  #         @user.admin?
  #       else
  #         @user.buyer?
  #       end
  #     else
  #       @user.can?(gate.role, object)
  #     end
  #   end

  # end
end
