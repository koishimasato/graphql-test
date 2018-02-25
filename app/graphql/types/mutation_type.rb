Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  field :destroyPostMutation, Mutations::DestroyPostMutation.field
  field :updatePostMutation, Mutations::UpdatePostMutation.field
  field :createPostMutation, Mutations::CreatePostMutation.field
  field :createPost, field: Mutations::CreatePostMutation.field
  field :updatePost, field: Mutations::UpdatePostMutation.field
end
