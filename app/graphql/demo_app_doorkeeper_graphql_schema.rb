DemoAppDoorkeeperGraphqlSchema = GraphQL::Schema.define do
  # authorization(:cancan)
  mutation(Types::MutationType)
  query(Types::QueryType)
  use GraphQL::Guard.new(
    not_authorized: ->(type, field) { GraphQL::ExecutionError.new("Not authorized to access #{type}.#{field}") }
  )
end
