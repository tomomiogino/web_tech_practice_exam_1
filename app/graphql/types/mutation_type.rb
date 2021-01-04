Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  # TODO: Remove me
  field :testField, types.String do
    description "An example field added by the generator"
    resolve ->(obj, args, ctx) {
      "Hello World!"
    }
  end

  field :blog, !Types::BlogType do
    resolve ->(_obj, _args, ctx) {
      ctx[:blog]
    }
  end
end
