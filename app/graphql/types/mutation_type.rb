Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  field :createPost, field: Mutations::CreatePostMutation.field
  field :updatePost, field: Mutations::UpdatePostMutation.field
  field :destroyPost, Mutations::DestroyPostMutation.field
end
