Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  field :createPostMutation, Mutations::CreatePostMutation.field
  field :createPost, field: Mutations::CreatePostMutation.field
end
