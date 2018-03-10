Types::PostType = GraphQL::ObjectType.define do
  name "Post"
  description '投稿'

  field :id, !types.ID, 'ID'
  field :subject, !types.String, '本文'
end
